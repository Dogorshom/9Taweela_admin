import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:taweela_admin/constant/constant.dart';
import 'package:taweela_admin/models/driver_from_firebase.dart';
import 'package:taweela_admin/models/user_from_firebase.dart';
import 'package:taweela_admin/pages/Home/customers/customer_details.dart';
import 'package:taweela_admin/pages/Home/drivers/driver_details.dart';
import 'package:taweela_admin/services/search/search_deiver.dart';
import 'package:taweela_admin/services/search/search_order.dart';
import 'package:taweela_admin/services/search/search_user.dart';

class DriversScreen extends StatefulWidget {
  const DriversScreen({Key? key}) : super(key: key);

  @override
  _DriversScreenState createState() => _DriversScreenState();
}

class _DriversScreenState extends State<DriversScreen> {
  final TextEditingController searchController =  TextEditingController();
  String? phoneNumber = "";
  bool driverSelected = false;
  DriverFromFirebase? driverFromFirebase;
  SearchForDriver searchForDriver = SearchForDriver();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.all(fixPadding*2),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: screenHeight*0.15,
            ),
            // Container(
            //   // height: 30,
            //   width: screenWidth*0.5,
            //   decoration: BoxDecoration(
            //       color: darkBlueColor,
            //       borderRadius: BorderRadius.circular(fixPadding)
            //   ),
            //   child: Padding(
            //     padding: const EdgeInsets.all(fixPadding),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceAround,
            //       children: [
            //       InkWell(
            //         child: Container(
            //             child: Text("Name",style: whiteLargeTextStyle,)),
            //       ),
            //         InkWell(
            //           child: Text("Phone",style: whiteLargeTextStyle.copyWith(color: Colors.white54),),
            //         ),
            //     ],),
            //   ),
            // ),
            const SizedBox(height:30),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: TextFormField(
                  controller: searchController,
                  cursorColor: myFirstColor,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(top: 15),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.black, width: 2.0),
                      ),
                      labelText: "Search",
                      prefixIcon: Container(
                          margin: const EdgeInsets.all(10),
                          child: const Icon(
                            Icons.search,
                            color: Colors.black,
                          )),
                      suffixIcon: IconButton(
                          onPressed: (){
                            setState((){
                              searchController.clear();
                              phoneNumber = "";
                              driverSelected = false;
                            });
                          },
                          icon:const Icon(Icons.clear)
                      )
                  ),
                  onChanged: (val) {
                    setState(() {
                      phoneNumber = val;
                      driverSelected = false;
                    });
                  },
                ),
              ),
            ),
            driverSelected?
            DriverDetails(driverFromFirebase: driverFromFirebase!)
                :StreamBuilder<QuerySnapshot>(
              stream: phoneNumber != "" && phoneNumber != null&& phoneNumber!.length==10
                  ? searchForDriver.searchByExactPhoneNumber(phoneNumber)
                  :searchForDriver.searchByPComparingPhoneNumber(phoneNumber),
              builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.hasError) {
                  print("${snapshot.error}");
                  return Text('Error: ${snapshot.error}');
                }
                else if (snapshot.connectionState ==  ConnectionState.waiting) {
                  return const Text('Loading...');}
                else{
                  return Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top:fixPadding),
                      decoration: BoxDecoration(
                          color: lightOrange,
                          borderRadius: BorderRadius.circular(fixPadding)
                      ),
                      child: ListView.builder(
                          itemCount: snapshot.data!.docs.length,
                          itemBuilder: (context,index) {
                            return getTileWithDriverInformation(index,snapshot);
                          }),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget getTileWithDriverInformation(int index, AsyncSnapshot<QuerySnapshot<Object?>> snapshot) {
    var user = snapshot.data!.docs[index];
    driverFromFirebase = DriverFromFirebase(
        id:user['id'],
        name: user['name'],
        phoneNumber: user['phoneNumber'],
        imageURL: user['imageURL'],
        address: user['address'],
        email: user['email'],
        provider: user['provider']
    );
    return  Column(
      children: [
        ListTile(
          title: Text("${user['name']}",style: blackLargeTextStyle,),
          subtitle: Text("${user['phoneNumber']}"),
          onTap: (){
            driverFromFirebase!.id = user['id'];
            driverFromFirebase!.name = user['name'];
            driverFromFirebase!.imageURL = user['imageURL'];
            driverFromFirebase!.phoneNumber = user['phoneNumber'];
            driverFromFirebase!.email = user['email'];
            driverFromFirebase!.address = user['address'];
            driverFromFirebase!.provider = user['provider'];
            // driverFromFirebase!.carModel = user['carModel'];
            // driverFromFirebase!.carColor = user['carColor'];
            setState(() {
              driverSelected = true;
            });
            // CustomerDetails(userFromFirebase: userFromFirebase,);
          },
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: fixPadding*2),
          child: Divider(),
        )
      ],
    );
  }

}

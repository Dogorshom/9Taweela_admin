import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:taweela_admin/constant/constant.dart';
import 'package:taweela_admin/models/driver_from_firebase.dart';
import 'package:taweela_admin/models/order.dart';
import 'package:taweela_admin/models/user_from_firebase.dart';
import 'package:taweela_admin/pages/Home/customers/customer_details.dart';
import 'package:taweela_admin/pages/Home/drivers/driver_details.dart';
import 'package:taweela_admin/pages/Home/orders/order_details.dart';
import 'package:taweela_admin/services/search/search_order.dart';
import 'package:taweela_admin/services/search/search_user.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  _OrdersScreenState createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  final TextEditingController searchController =  TextEditingController();
  String? phoneNumber = "";
  bool orderSelected = false;
  Order currentOrder = Order();
  SearchForOrder searchForOrder = SearchForOrder();
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
                              orderSelected = false;
                            });
                          },
                          icon:const Icon(Icons.clear)
                      )
                  ),
                  onChanged: (val) {
                    setState(() {
                      phoneNumber = val;
                      orderSelected = false;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: fixPadding,),
            orderSelected?
            OrderDetails(order: currentOrder)
                :StreamBuilder<QuerySnapshot>(
              stream: phoneNumber != "" && phoneNumber != null&& phoneNumber!.length==10
                  ? searchForOrder.searchByExactPhoneNumber(phoneNumber)
                  :searchForOrder.searchByPComparingPhoneNumber(phoneNumber),
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
                            return getTileWithOrderInformation(index,snapshot);
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

  Widget getTileWithOrderInformation(int index,AsyncSnapshot<QuerySnapshot<Object?>> snapshot) {
    var order = snapshot.data!.docs[index];
    currentOrder =Order(
        id                          : order.id,
        title                       : order["title"],
        orderStatus                 : order["orderStatus"],
        description                 : order["description"],
        height                      : order["height"],
        width                       : order["width"],
        depth                       : order["depth"],
        weight                      : order["weight"],
        pickUpLocationLine          : order["pickUpLocation"],
        dropOffLocationLine         : order["dropOffLocation"],
        // comment: v["comment"],
        nameOfOrderDriver           : order["nameOfOrderDriver"],
        phoneNumberOfOrderDriver    : order["phoneNumberOfOrderDriver"],
        // priceWithoutDelivery:v["totalPriceWithoutDelivery"] ,
        deliveryPrice               : order["deliveryPrice"],
        deliveryPriceWithPromotion  : order["deliveryPriceWithPromotion"],
        promotion                   : order["promotion"],
        nameOfOrderUser             : order["nameOfOrderUser"],
        phoneNumberOfOrderUser      : order["phoneNumberOfOrderUser"] ,
        orderBeginDate              : DateTime.parse(order['published_at'])

    );
    return  Column(
      children: [
        ListTile(
          title: Text("${order['nameOfOrderUser']}",style: blackLargeTextStyle,),
          subtitle: Text("${order['phoneNumberOfOrderUser']}"),
          trailing: Text("${order['orderStatus']}"),
          onTap: (){
            currentOrder.id    = order.id;
            currentOrder.title = order["title"];
            currentOrder.orderStatus = order["orderStatus"];
            currentOrder.description = order["description"];
            currentOrder.height = order["height"];
            currentOrder.width  = order["width"];
            currentOrder.depth  = order["depth"];
            currentOrder.weight = order["weight"];
            currentOrder.pickUpLocationLine = order["pickUpLocation"];
            currentOrder.dropOffLocationLine = order["dropOffLocation"];
            // order.comment = value["comment"];
            currentOrder.deliveryPrice = order["deliveryPrice"];
            currentOrder.deliveryPriceWithPromotion = order["deliveryPriceWithPromotion"];
            currentOrder.promotion = order["promotion"];
            currentOrder.nameOfOrderUser = order["nameOfOrderUser"];
            currentOrder.phoneNumberOfOrderUser = order["phoneNumberOfOrderUser"];
            currentOrder.nameOfOrderDriver = order["nameOfOrderDriver"];
            currentOrder.phoneNumberOfOrderDriver = order["phoneNumberOfOrderDriver"];
            currentOrder.orderBeginDate = DateTime.parse(order["published_at"]);
            setState(() {
              orderSelected = true;
            });
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

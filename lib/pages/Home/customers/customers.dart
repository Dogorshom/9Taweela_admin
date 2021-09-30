import 'package:flutter/material.dart';
import 'package:taweela_admin/constant/constant.dart';

class CustomersScreen extends StatefulWidget {
  const CustomersScreen({Key? key}) : super(key: key);

  @override
  _CustomersScreenState createState() => _CustomersScreenState();
}

class _CustomersScreenState extends State<CustomersScreen> {
  final TextEditingController searchController =  TextEditingController();
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
                      contentPadding:
                      EdgeInsets.only(top: 15),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Colors.black, width: 2.0),
                      ),
                      labelText: "Search",
                      prefixIcon: Container(
                          margin: EdgeInsets.all(10),
                          color: Colors.white,
                          child: Icon(
                            Icons.search,
                            color: Colors.black,
                          ))),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}

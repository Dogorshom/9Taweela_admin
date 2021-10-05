import 'package:flutter/material.dart';
import 'package:taweela_admin/constant/constant.dart';

import 'home.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    print(screenWidth);
    double fonSize = screenWidth>1150?35:20;
    return // Adobe XD layer: 'Bgg' (shape)
      Padding(
        padding: const EdgeInsets.all(fixPadding*2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: screenHeight*0.05,
            ),
            Center(child: Text("Search For",style: primaryColorLargeTextStyle.copyWith(fontSize: 50),)),
            SizedBox(
              height: screenHeight*0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const Home(activePage: "Orders",)));
                  },
                  child: Container(
                    height:screenHeight*0.15,
                    width:screenWidth*0.15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: const Color(0xfffff8e8),
                    ),
                    alignment: Alignment.center,
                    child: Text("Order",style: primaryColorLargeTextStyle.copyWith(fontSize: fonSize),),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const Home(activePage: "Drivers",)));
                  },
                  child: Container(
                    height:screenHeight*0.15,
                    width:screenWidth*0.15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: const Color(0xfffff8e8),
                    ),
                    alignment: Alignment.center,
                    child: Text("Driver",style: primaryColorLargeTextStyle.copyWith(fontSize: fonSize),),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const Home(activePage: "Customers",)));
                  },
                  child: Container(
                    height:screenHeight*0.15,
                    width:screenWidth*0.15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: const Color(0xfffff8e8),
                    ),
                    alignment: Alignment.center,
                    child: Text("Customer",style: primaryColorLargeTextStyle.copyWith(fontSize: fonSize),),
                  ),
                ),
              ],
            ),
            SizedBox(height:screenHeight*0.1),
            Padding(
              padding: EdgeInsets.symmetric(horizontal:screenWidth*0.2),
              child: Divider(height: 10,thickness: 3,color: whiteColor,),
            )

          ],
        ),
      );
  }
}

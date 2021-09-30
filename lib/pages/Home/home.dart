import 'package:flutter/material.dart';
import '/constant/constant.dart';
import 'calendar/calendar.dart';
import 'drivers/drivers.dart';
import 'promotions/promotions.dart';
import 'settings/settings.dart';

import 'customers/customers.dart';
import 'home_screen.dart';

class Home extends StatefulWidget {
  final String activePage;
  const Home({Key? key , required this.activePage}): super(key: key);
  @override
  _HomeState createState() => _HomeState(activePage);
}

class _HomeState extends State<Home> {
  String? activePageHover = "HomeScreen";
  _HomeState(this.activePageHover);
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double iconSize = 30.0;
    return Scaffold(
     body:Container(
       height: screenHeight,
       width: screenWidth,
       decoration: BoxDecoration(
         gradient: LinearGradient(colors: [
           mySecondColor,
           myFirstColor,
         ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
       ),
       child: Stack(
         children: [
           Container(
             height:screenHeight,
             width: 200,
             color: lightOrange,
             child: Column(
               children: [
                 //9Taweela Logo
                 Row(
                   children: [
                     Image.asset("assets/background/taweela_main_logo_without_text.png",height: 80,width: 80,),
                     Image.asset("assets/background/taweela_text_logo.png",width: 100,),
                   ],
                 ),
                 SizedBox(
                   height: screenHeight*0.05,
                 ),
                 //==========Home Tile
                 getNavTile(icon: Icon(
                   activePageHover == "HomeScreen"
                       ? Icons.home
                       : Icons.home_outlined,
                   size: iconSize,
                   color: activePageHover == "HomeScreen"
                       ? Colors.orange
                       : Colors.black38,
                 ), title: "Home",isActive: "HomeScreen"),
                 //==========Promotion Tile
                 getNavTile(icon: Icon(
                   activePageHover == "Promotion"
                       ? Icons.add
                       : Icons.add_outlined,
                   size: iconSize,
                   color: activePageHover == "Promotion"
                       ? Colors.orange
                       : Colors.black38,
                 ), title: "Promotion",isActive: "Promotion"),
                 //==========Drivers Tile
                 getNavTile(icon: Icon(
                   activePageHover == "Drivers"
                       ? Icons.directions_car_rounded
                       : Icons.directions_car_outlined,
                   size: iconSize,
                   color: activePageHover == "Drivers"
                       ? Colors.orange
                       : Colors.black38,
                 ), title: "Drivers",isActive: "Drivers"),
                 //==========Customers Tile
                 getNavTile(icon: Icon(
                   activePageHover == "Customers"
                       ? Icons.person
                       : Icons.person_outlined,
                   size: iconSize,
                   color: activePageHover == "Customers"
                       ? Colors.orange
                       : Colors.black38,
                 ), title: "Customers",isActive: "Customers"),
                 //==========Calendar Tile
                 getNavTile(icon: Icon(
                   activePageHover == "Calendar"
                       ? Icons.calendar_today
                       : Icons.calendar_today_outlined,
                   size: iconSize,
                   color: activePageHover == "Calendar"
                       ? Colors.orange
                       : Colors.black38,
                 ), title: "Calendar",isActive: "Calendar"),
                 //==========Settings Tile
                 getNavTile(icon: Icon(
                   activePageHover == "Settings"
                       ? Icons.settings
                       : Icons.settings_outlined,
                   size: iconSize,
                   color: activePageHover == "Settings"
                       ? Colors.orange
                       : Colors.black38,
                 ), title: "Settings",isActive: "Settings")
               ],
             ),
           ),
           Padding(
             padding: const EdgeInsets.only(left:200),
             child: Container(
               child: activePageHover == "HomeScreen"    ?const HomeScreen():
               activePageHover == "Promotion"   ? const PromotionScreen ()  :
               activePageHover == "Drivers"     ? const DriversScreen ()    :
               activePageHover == "Customers"   ? const CustomersScreen ()  :
               activePageHover == "Calendar"    ? const Calendar ()   :
               activePageHover == "Settings"    ? const Settings ()   :
               const HomeScreen(),
             ),
           ),
           Positioned(
               right: 10,
               top: 10,
               child: Container(
             height: 40,
             width: 250,
             child: Row(
               children: [
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: fixPadding),
                   child: Image.asset("assets/icons/courier.png",height: 30,),
                 ),
                 Expanded(
                   child:Text("Ahmed Khalid Mohammed")
                 ),
                 Icon(Icons.arrow_drop_down)
               ],
             ),
           ))
         ],
       ),
     )
    );
  }
  getNavTile({required Icon icon,required String? title, String? isActive}){
    return InkWell(
      onTap: (){
        setState(() {
          activePageHover = isActive;
        });
      },
      child: Container(
        decoration: BoxDecoration(
            color: isActive == activePageHover
                ? Colors.deepOrange[100]
                : Colors.transparent,
            border: Border(
                left: BorderSide(
                    color: isActive == activePageHover
                        ? Colors.deepOrange
                        : Colors.transparent,
                    width: 2.5))),
        child: Padding(
          padding: const EdgeInsets.all(fixPadding),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: fixPadding),
                child: icon,
              ),
              Text(title!,style: isActive == activePageHover?blackHeadingTextStyle.copyWith(color:Colors.deepOrange,fontWeight: FontWeight.w700):blackHeadingTextStyle.copyWith(color:Colors.black38),)
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:taweela_admin/pages/Home/orders/orders.dart';
import '/constant/constant.dart';
import 'calendar/calendar.dart';
import 'drivers/drivers.dart';
import 'promotions/promotions.dart';
import 'settings/settings.dart';
import 'customers/customers.dart';
import 'home_screen.dart';

class Home extends StatefulWidget {
  final String? activePage;
  const Home({Key? key , this.activePage}): super(key: key);
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
    double iconSize = screenWidth > 600 ? 30.0:15.0;
    double drawerWidth = screenWidth > 600 ? 200:100;
    double fonSize = screenWidth>1150?35:20;
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
            padding:  EdgeInsets.all( drawerWidth>=200?fixPadding:5),
            child: Row(
              children: [
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: drawerWidth>=200?fixPadding:5),
                  child: icon,
                ),
                Text(title!,style: isActive == activePageHover?blackHeadingTextStyle
                    .copyWith(color:Colors.deepOrange,fontWeight: drawerWidth>=200?FontWeight.w700:FontWeight.w400,fontSize:drawerWidth>=200?16:10 )
                    :blackHeadingTextStyle.copyWith(color:Colors.black38,fontWeight: drawerWidth>=200?FontWeight.w700:FontWeight.w400,fontSize:drawerWidth>=200?16:10))
              ],
            ),
          ),
        ),
      );
    }
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
           Container (
             height:screenHeight,
             width: drawerWidth,
             color: lightOrange,
             child: Column(
               children: [
                 //9Taweela Logo
                 Row(
                   children: [
                     Image.asset("assets/background/taweela_main_logo_without_text.png",width: drawerWidth*0.3,),
                     Image.asset("assets/background/taweela_text_logo.png",width: drawerWidth*0.5,),
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
                 //==========Orders Tile
                 getNavTile(icon: Icon(
                   activePageHover == "Orders"
                       ? Icons.edit
                       : Icons.edit_outlined,
                   size: iconSize,
                   color: activePageHover == "Orders"
                       ? Colors.orange
                       : Colors.black38,
                 ), title: "Orders",isActive: "Orders"),
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
           Padding   (
             padding: EdgeInsets.only(left:drawerWidth),
             child: Container(
               child: activePageHover == "HomeScreen"    ?const HomeScreen():
               activePageHover == "Promotion"   ? const PromotionScreen ()  :
               activePageHover == "Drivers"     ? const DriversScreen ()    :
               activePageHover == "Customers"   ? const CustomersScreen ()  :
               activePageHover == "Calendar"    ? const Calendar ()   :
               activePageHover == "Settings"    ? const Settings ()   :
               activePageHover == "Orders"      ? const OrdersScreen ()   :
               const HomeScreen(),
             ),
           ),
           Positioned(
               right: 10,
               top: 10,
               child: SizedBox(
             height: 40,
             width: 250,
             child: Row(
               children: [
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: fixPadding),
                   child: Image.asset("assets/icons/courier.png",height: 30,),
                 ),
                 const Expanded(
                   child: Text("Ahmed Khalid Mohammed")
                 ),
                 const Icon(Icons.arrow_drop_down)
               ],
             ),
           )),
           Positioned(
             left: 0,
             bottom: 0,
             child: Opacity(
                 opacity: 0.2,
                 child: Image.asset("assets/banners/motor_logo_for_splash.png",width: 250,)),
           ),
           Positioned(
             right: 0,
             bottom: 0,
             child: Opacity(
                 opacity: 0.2,
                 child: Image.asset("assets/background/bottom_corner_logo_gray.png",width: screenWidth*0.25,)),
           ),
           Positioned(top: 0,left: drawerWidth,
           child: Image.asset("assets/background/top_corner_logo_white.png",height: 100,),
           ),
           ///===========================HomeScreen=====================
           // activePageHover=="HomeScreen"?Padding(
           //   padding: EdgeInsets.only(left:drawerWidth),
           //   child: Column(
           //     crossAxisAlignment: CrossAxisAlignment.center,
           //     children: [
           //       SizedBox(
           //         height: screenHeight*0.05,
           //       ),
           //       Center(child: Text("Search For",style: primaryColorLargeTextStyle.copyWith(fontSize: 50),)),
           //       SizedBox(
           //         height: screenHeight*0.05,
           //       ),
           //       Row(
           //         mainAxisAlignment: MainAxisAlignment.center,
           //         children: [
           //           InkWell(
           //             onTap: (){
           //               setState(() {
           //                 activePageHover = "Orders";
           //               });
           //             },
           //             child: Container(
           //               height:screenHeight*0.15,
           //               width:screenWidth*0.15,
           //               decoration: BoxDecoration(
           //                 borderRadius: BorderRadius.circular(15.0),
           //                 color: const Color(0xfffff8e8),
           //               ),
           //               alignment: Alignment.center,
           //               child: Text("Order",style: primaryColorLargeTextStyle.copyWith(fontSize: fonSize),),
           //             ),
           //           ),
           //           SizedBox(
           //             width: 20,
           //           ),
           //           InkWell(
           //             onTap: (){
           //               setState(() {
           //                 activePageHover = "Drivers";
           //               });
           //             },
           //             child: Container(
           //               height:screenHeight*0.15,
           //               width:screenWidth*0.15,
           //               decoration: BoxDecoration(
           //                 borderRadius: BorderRadius.circular(15.0),
           //                 color: const Color(0xfffff8e8),
           //               ),
           //               alignment: Alignment.center,
           //               child: Text("Driver",style: primaryColorLargeTextStyle.copyWith(fontSize: fonSize),),
           //             ),
           //           ),
           //           SizedBox(
           //             width: 20,
           //           ),
           //           InkWell(
           //             onTap: (){
           //               setState(() {
           //                 activePageHover = "Customers";
           //                 Navigator.push(context, MaterialPageRoute(builder: (context)=>const Home(activePage: "Customers",)));
           //               });
           //             },
           //             child: Container(
           //               height:screenHeight*0.15,
           //               width:screenWidth*0.15,
           //               decoration: BoxDecoration(
           //                 borderRadius: BorderRadius.circular(15.0),
           //                 color: const Color(0xfffff8e8),
           //               ),
           //               alignment: Alignment.center,
           //               child: Text("Customer",style: primaryColorLargeTextStyle.copyWith(fontSize: fonSize),),
           //             ),
           //           ),
           //         ],
           //       ),
           //       SizedBox(height:screenHeight*0.1),
           //       Padding(
           //         padding: EdgeInsets.symmetric(horizontal:screenWidth*0.2),
           //         child: Divider(height: 10,thickness: 3,color: whiteColor,),
           //       )
           //
           //     ],
           //   ),
           // ):Container(),
         ],
       ),
     )
    );
  }
}

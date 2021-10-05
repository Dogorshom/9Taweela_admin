
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Color scaffoldBgColor = Color(0xFFF4F4F4);
Color primaryColor = Color(0xFF242E4D);
Color greyColor = Colors.grey;
Color whiteColor = Colors.white;
Color whiteColor70 = Colors.white70;
Color blackColor = Colors.black;
Color lightGreyColor = Colors.grey.withOpacity(0.3);
Color lightPrimaryColor = primaryColor.withOpacity(0.1);
Color darkBlueColor = Color(0xFF242E4D);
Color myFirstColor = Color(0xffDE7C23);
Color mySecondColor = Color(0xfffcab4f);
Color lightOrange   = Color(0xffFFF8E8);
// Color? myFirstButtonColor = Colors.yellow[200];
Color mySecondButtonColor = Colors.white38;
Color? myOrangeColor = Colors.orange[200];
Color greenColor = Colors.green;
Color yellowColor = Colors.yellow;
Color redColor = Colors.red;
Color black54Color = Colors.black54;

const double fixPadding = 10.0;

SizedBox heightSpace = SizedBox(height: 10.0);
SizedBox widthSpace = SizedBox(width: 10.0);

TextStyle splashBigTextStyle = TextStyle(
  color: primaryColor,
  fontSize: 40.0,
  fontFamily: 'Pacifico',
);

TextStyle bottomBarItemStyle = TextStyle(
  color: primaryColor,
  fontSize: 11.0,
  fontWeight: FontWeight.w500,
);

TextStyle appBarTextStyle = TextStyle(
  color: primaryColor,
  fontSize: 18.0,
  fontWeight: FontWeight.w500,
);

TextStyle appBarBlackTextStyle = TextStyle(
  color: blackColor,
  fontSize: 18.0,
  fontWeight: FontWeight.w500,
);

TextStyle blackHeadingTextStyle = TextStyle(
  color: blackColor,
  fontSize: 17.0,
  height: 1.3,
  fontWeight: FontWeight.w500,
);

TextStyle blackSmallTextStyle = TextStyle(
  color: blackColor,
  fontSize: 15.0,
  height: 1.3,
);

TextStyle blackSmallBoldTextStyle = TextStyle(
  color: blackColor,
  fontSize: 15.0,
  fontWeight: FontWeight.w500,
);


TextStyle blackNormalTextStyle = TextStyle(
  color: blackColor,
  fontSize: 17.0,
  height: 1.3,
);


TextStyle blackLargeTextStyle = TextStyle(
  color: blackColor,
  fontSize: 20.0,
  height: 1.3,
);

TextStyle blackExtraLargeTextStyle = TextStyle(
  color: blackColor,
  fontWeight: FontWeight.w500,
  fontSize: 22.0,
  height: 1.3,
);

TextStyle whiteLargeTextStyle = TextStyle(
  color: whiteColor,
  fontSize: 20.0,
  height: 1.3,
);

TextStyle whiteBoldLargeTextStyle = TextStyle(
    color: whiteColor,
    fontSize: 20.0,
    height: 1.3,
    fontWeight: FontWeight.bold
);

TextStyle whiteSmallTextStyle = TextStyle(
  color: whiteColor.withOpacity(0.9),
  fontSize: 15.0,
  height: 1.3,
);

TextStyle whiteNormalTextStyle = TextStyle(
  color: whiteColor,
  fontSize: 17.0,
  height: 1.3,
);

TextStyle whiteVerySmallTextStyle = TextStyle(
  color: whiteColor,
  fontSize: 8.0,
  height: 0.8,
);

TextStyle blackVerySmallTextStyle = TextStyle(
  color: blackColor,
  fontSize: 10.0,
  height: 1.0,
);

TextStyle whiteBottonTextStyle = TextStyle(
  color: whiteColor,
  fontSize: 18.0,
);

TextStyle blackBottonTextStyle = TextStyle(
  color: blackColor,
  fontSize: 18.0,
);

TextStyle greyNormalTextStyle = TextStyle(
  color: greyColor,
  fontSize: 18.0,
  height: 1.3,
);

TextStyle greySmallTextStyle = TextStyle(
  color: greyColor,
  fontSize: 15.0,
  height: 1.3,
);

TextStyle lightGreySmallTextStyle = TextStyle(
  color: Colors.white54,
  fontSize: 15.0,
  height: 1.3,
);
TextStyle greySmallBoldTextStyle = TextStyle(
  color: greyColor,
  fontSize: 15.0,
  fontWeight: FontWeight.w500,
);

TextStyle primaryColorHeadingTextStyle = TextStyle(
  color: primaryColor,
  fontSize: 18.0,
  fontWeight: FontWeight.w500,
);

TextStyle primaryColorLargeTextStyle = TextStyle(
  color: primaryColor,
  fontSize: 20.0,
  height: 1.3,
);

TextStyle primaryColorSmallTextStyle = TextStyle(
  color: primaryColor,
  fontSize: 16.0,
);

TextStyle primaryColorSmallBoldTextStyle = TextStyle(
  color: primaryColor,
  fontSize: 15.0,
  fontWeight: FontWeight.w500,
);

TextStyle primaryColorLignThroughSmallBoldTextStyle = TextStyle(
  color: primaryColor,
  fontSize: 15.0,
  fontWeight: FontWeight.w500,
  decoration: TextDecoration.lineThrough,
);

TextStyle inputTextStyle = TextStyle(
  color: blackColor,
  fontSize: 16.0,
);

TextStyle whiteColorTextStyle = TextStyle(
  color: whiteColor,
  fontSize: 16.0,
);

TextStyle infoTextStyle = TextStyle(
  color: blackColor,
  fontSize: 14.0,
);

TextStyle orderPlacedTextStyle = TextStyle(
  color: Colors.grey[400],
  fontSize: 18.0,
);

TextStyle priceTextStyle = TextStyle(
  color: primaryColor,
  fontSize: 18.0,
);

TextStyle blueSmallTextStyle = TextStyle(
  color: Colors.blue,
  fontSize: 15.0,
);

TextStyle yellowExtraLargeTextStyle = TextStyle(
  color: Colors.yellow,
  fontWeight: FontWeight.w500,
  fontSize: 40.0,
  height: 1.3,
);

TextStyle bigHeadingStyle = TextStyle(
  fontSize: 22.0,
  color: blackColor,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w600,
);

TextStyle bigWhiteHeadingStyle = TextStyle(
  fontSize: 24.0,
  color: whiteColor,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w600,
);

TextStyle headingStyle = TextStyle(
  fontSize: 18.0,
  color: blackColor,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w500,
);

TextStyle greyHeadingStyle = TextStyle(
  fontSize: 16.0,
  color: greyColor,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w500,
);

TextStyle blueTextStyle = TextStyle(
  fontSize: 18.0,
  color: Colors.blue,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w400,
);

TextStyle whiteHeadingStyle = TextStyle(
  fontSize: 22.0,
  color: whiteColor,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w500,
);

TextStyle whiteSubHeadingStyle = TextStyle(
  fontSize: 14.0,
  color: whiteColor,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.normal,
);

TextStyle wbuttonWhiteTextStyle = TextStyle(
  fontSize: 16.0,
  color: whiteColor,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w500,
);

TextStyle buttonBlackTextStyle = TextStyle(
  fontSize: 16.0,
  color: blackColor,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w500,
);

TextStyle moreStyle = TextStyle(
  fontSize: 14.0,
  color: primaryColor,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w500,
);

TextStyle priceStyle = TextStyle(
  fontSize: 18.0,
  color: primaryColor,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.bold,
);

TextStyle lightGreyStyle = TextStyle(
  fontSize: 15.0,
  color: Colors.grey.withOpacity(0.6),
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w500,
);

// List Item Style Start
TextStyle listItemTitleStyle = TextStyle(
  fontSize: 15.0,
  color: blackColor,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w500,
);
TextStyle listItemSubTitleStyle = TextStyle(
  fontSize: 14.0,
  color: greyColor,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.normal,
);

// List Item Style End

// AppBar Style Start
TextStyle appbarHeadingStyle = TextStyle(
  color: primaryColor,
  fontSize: 14.0,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w500,
);
TextStyle appbarSubHeadingStyle = TextStyle(
  color: whiteColor,
  fontSize: 13.0,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w500,
);
// AppBar Style End

// Search text style start
TextStyle searchTextStyle = TextStyle(
  color: whiteColor.withOpacity(0.6),
  fontSize: 16.0,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w500,
);

extension CapExtension on String {
  String get inCaps => '${this[0].toUpperCase()}${this.substring(1)}';
  String get allInCaps => this.toUpperCase();
  String get capitalizeFirstOfEach => this.split(" ").map((str) => str.capitalizeFirstOfEach).join(" ");

}

void customLaunch(command) async {
  if (await canLaunch(command)) {
    await launch(command);
  } else {
    print("sorry, unavailable command");
  }
}

getBackgroundStack(BuildContext context){
  double screenWidth = MediaQuery.of(context).size.width;
  double screenHeight = MediaQuery.of(context).size.height;
  double iconSize = screenWidth > 600 ? 30.0:15.0;
  double drawerWidth = screenWidth > 600 ? 200:100;
  return Stack(
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
          ],
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
      )
    ],
  );
}
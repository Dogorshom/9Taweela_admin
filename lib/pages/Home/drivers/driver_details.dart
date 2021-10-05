import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:taweela_admin/constant/constant.dart';
import 'package:taweela_admin/models/driver_from_firebase.dart';
import 'package:taweela_admin/models/user_from_firebase.dart';
class DriverDetails extends StatefulWidget {
  final DriverFromFirebase driverFromFirebase;
  const DriverDetails({Key? key, required this.driverFromFirebase}) : super(key: key);

  @override
  _DriverDetailsState createState() => _DriverDetailsState();
}

class _DriverDetailsState extends State<DriverDetails> {
  int iconSize = 30;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    print(screenWidth);
    getBox(Icon icon,String title){
      return Container(
        // height: screenHeight*0.13,
        width: (screenWidth-200)*0.2,
        // margin: const EdgeInsets.all(fixPadding),
        padding: const EdgeInsets.all(fixPadding),
        decoration: BoxDecoration(
            color: lightOrange,
            borderRadius: BorderRadius.circular(fixPadding)
        ),
        child: Column(
          children: [
            icon,
            Text(title,style: blackLargeTextStyle.copyWith(color: Colors.deepOrange
            ),
              maxLines: 1,overflow: TextOverflow.ellipsis,)
          ],
        ),
      );
    }
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: fixPadding*3,
            ),
            //user name details
            Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: fixPadding),
                  child:ClipRRect(
                    borderRadius:BorderRadius.circular(35),
                    child: widget.driverFromFirebase.imageURL!=null?Container(
                      height:70,
                      width: 70,
                      color: Colors.white54,
                      child: CachedNetworkImage(
                        imageUrl: "${widget.driverFromFirebase.imageURL}",
                        placeholder: (context, url) => Container(color: Colors.black26,),
                        errorWidget: (context, url, error) => Icon(Icons.error),
                        height: 70,
                        width: 70,
                        // color: Colors.red,
                      ),
                    )
                        : Container(
                      height: 70,
                      width: 70,
                      color: myFirstColor,
                      alignment: Alignment.center,
                      child: Text(widget.driverFromFirebase.name!.substring(0,1).toUpperCase(),style: whiteLargeTextStyle.copyWith(fontSize: 30),),
                    ),
                  ),
                ),
                Text(
                  "${widget.driverFromFirebase.name}",
                  style: whiteLargeTextStyle,
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            const SizedBox(
              height: fixPadding*3,
            ),

            Row(
              children: [
                SizedBox(
                    width: (screenWidth-240)*0.5,
                    child: Text("Address:",style: whiteNormalTextStyle,)),
                Text("Email:",style: whiteNormalTextStyle,),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: fixPadding),
              child:     Row(
                children: [
                  SizedBox(
                      width: (screenWidth-260)*0.5,
                      child: Text("${widget.driverFromFirebase.address}",style: blackNormalTextStyle,)),
                  Flexible(child: Text("  ${widget.driverFromFirebase.email}",style: blackNormalTextStyle,maxLines: 2,overflow: TextOverflow.ellipsis,)),
                ],
              ),
            ),
            const SizedBox(
              height: fixPadding*2,
            ),
            Row(
              children: [
                SizedBox(
                    width: (screenWidth-240)*0.5,
                    child: Text("Phone Number:",style: whiteNormalTextStyle,)),
                Text("Provider:",style: whiteNormalTextStyle,),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: fixPadding),
              child: Row(
                children: [
                  SizedBox(
                      width: (screenWidth-260)*0.5,
                      child: Text("${widget.driverFromFirebase.phoneNumber}",style: blackNormalTextStyle,)),
                  Text("  ${widget.driverFromFirebase.provider}",style: blackNormalTextStyle,),
                ],
              ),
            ),
            const SizedBox(
              height: fixPadding*4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //call box
                getBox(Icon(Icons.call),"Call"),
                //call box
                getBox(Icon(Icons.email_outlined),"Email"),
                //call box
                getBox(Icon(Icons.message_outlined),"Message"),
              ],),
            const SizedBox(
              height: fixPadding*2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //call box
                getBox(Icon(Icons.warning_outlined),"Warning"),
                //call box
                getBox(Icon(Icons.shield_outlined),"Badge"),
                //call box
                getBox(Icon(Icons.block),"Block"),
              ],),
          ],
        ),
      ),
    );
  }
}

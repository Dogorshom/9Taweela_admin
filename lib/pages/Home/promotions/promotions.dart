import 'package:flutter/material.dart';
import 'package:taweela_admin/constant/constant.dart';
class PromotionScreen extends StatefulWidget {
  const PromotionScreen({Key? key}) : super(key: key);

  @override
  _PromotionScreenState createState() => _PromotionScreenState();
}

class _PromotionScreenState extends State<PromotionScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(fixPadding*2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: screenHeight*0.15,
          ),
          Center(child: Text("Promotions",style: primaryColorLargeTextStyle.copyWith(fontSize: 50),)),
          SizedBox(
            height: screenHeight*0.05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: (){},
                child: Container(
                  height:200,
                  width:screenWidth*0.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: const Color(0xfffff8e8),
                  ),
                  alignment: Alignment.center,
                  child: Text("Add",style: primaryColorLargeTextStyle.copyWith(fontSize: 40),),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: (){},
                child: Container(
                  height:200,
                  width:screenWidth*0.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: const Color(0xfffff8e8),
                  ),
                  alignment: Alignment.center,
                  child: Text("Status",style: primaryColorLargeTextStyle.copyWith(fontSize: 40),),
                ),
              ),
            ],
          ),
          SizedBox(height:screenHeight*0.1),
          Divider(height: 10,thickness: 3,color: whiteColor,)

        ],
      ),
    );

  }
}

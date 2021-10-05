import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taweela_admin/constant/constant.dart';
import 'package:taweela_admin/models/order.dart';

class OrderDetails extends StatelessWidget {
  final Order order;
  const OrderDetails({Key? key, required this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: lightOrange,
            borderRadius: BorderRadius.circular(fixPadding)
        ),
        // width: screenWidth,
        // height: screenHeight*0.6,
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(fixPadding),
              decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(10))
              ),
              child: Row(
                mainAxisAlignment:
                MainAxisAlignment
                    .center,
                children: [
                  Text(order.orderStatus!.inCaps,
                    style:
                    whiteLargeTextStyle,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Icon(
                      Icons
                          .check_circle,
                      color: order.orderStatus ==
                          "ordered"||order.orderStatus == "canceled"||order.orderStatus == "active" ? Colors.white54:order.orderStatus ==
                          "delivering"?Colors.orange:Colors.green

                  )
                ],
              ),
            ),
            Container(
              width: screenWidth,
              padding: const EdgeInsets.all(fixPadding),
              alignment: Alignment.center,
              color: myFirstColor,
              child: Container(
                width: screenWidth,
                child: Center(
                  child: Text(
                    'ID: ${order.id}',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: wbuttonWhiteTextStyle,
                  ),
                ),
              ),
            ),

            // Order Start
            Container(
              margin: EdgeInsets.all(fixPadding),
              decoration: BoxDecoration(
                color: greyColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(fixPadding),
                    decoration: BoxDecoration(
                        color: lightGreyColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5.0),
                          topLeft: Radius.circular(5.0),
                        )),
                    child: Text("Order",
                      style: buttonBlackTextStyle,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(fixPadding),
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          crossAxisAlignment:
                          CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Delivery Charges',
                              style: listItemTitleStyle,
                            ),
                            Text(
                              '\$${order.deliveryPrice}',
                              style: listItemTitleStyle,
                            ),
                          ],
                        ),
                        heightSpace,
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          crossAxisAlignment:
                          CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Promotion',
                              style: listItemTitleStyle,
                            ),
                            Text(
                              '${order.promotion??0}',
                              style: listItemTitleStyle,
                            ),
                          ],
                        ),
                        Divider(),
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          crossAxisAlignment:
                          CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "total",
                              style: headingStyle,
                            ),
                            Text(
                              '\$${order.deliveryPriceWithPromotion}',
                              style: priceStyle,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //Order End
            // Location Start
            Container(
              margin: EdgeInsets.all(fixPadding),
              decoration: BoxDecoration(
                color: greyColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(fixPadding),
                    decoration: BoxDecoration(
                        color: lightGreyColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5.0),
                          topLeft: Radius.circular(5.0),
                        )),
                    child: Text(
                      "Location",
                      style: buttonBlackTextStyle,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(fixPadding),
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          crossAxisAlignment:
                          CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'PickUp',
                              style: listItemTitleStyle,
                            ),
                            widthSpace,
                            Flexible(
                              child: Text(
                                '${order.pickUpLocationLine}',
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                style: listItemTitleStyle,
                              ),
                            ),
                          ],
                        ),
                        heightSpace,
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          crossAxisAlignment:
                          CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'DropOff',
                              style: listItemTitleStyle,
                            ),
                            widthSpace,
                            Flexible(
                              child: Text(
                                '${order.dropOffLocationLine}',
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                style: listItemTitleStyle,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Location End

            // Customer Start
            Container(
              margin: EdgeInsets.all(fixPadding),
              decoration: BoxDecoration(
                color: greyColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(fixPadding),
                    decoration: BoxDecoration(
                        color: lightGreyColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5.0),
                          topLeft: Radius.circular(5.0),
                        )),
                    child: Text(
                      'Customer',
                      style: buttonBlackTextStyle,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(fixPadding),
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          crossAxisAlignment:
                          CrossAxisAlignment.center,
                          children: <Widget>[
                            Text('Name',
                              style: listItemTitleStyle,
                            ),
                            Text(
                              '${order.nameOfOrderUser}',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: listItemTitleStyle,
                            ),
                          ],
                        ),
                        heightSpace,
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          crossAxisAlignment:
                          CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Phone',
                              style: listItemTitleStyle,
                            ),
                            Text(
                              '${order.phoneNumberOfOrderUser}',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: listItemTitleStyle,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //Customer End
            //Driver Start
            Container(
              margin: EdgeInsets.all(fixPadding),
              decoration: BoxDecoration(
                color: greyColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(fixPadding),
                    decoration: BoxDecoration(
                        color: lightGreyColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5.0),
                          topLeft: Radius.circular(5.0),
                        )),
                    child: Text(
                      'Driver',
                      style: buttonBlackTextStyle,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(fixPadding),
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          crossAxisAlignment:
                          CrossAxisAlignment.center,
                          children: <Widget>[
                            Text('Driver',
                              style: listItemTitleStyle,
                            ),
                            Text(
                              '${order.nameOfOrderDriver??"not available"}',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: listItemTitleStyle,
                            ),
                          ],
                        ),
                        heightSpace,
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          crossAxisAlignment:
                          CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Phone',
                              style: listItemTitleStyle,
                            ),
                            Text(
                              '${order.phoneNumberOfOrderDriver??"not available"}',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: listItemTitleStyle,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //Driver End

            // Payment Start
            Container(
              margin: EdgeInsets.all(fixPadding),
              decoration: BoxDecoration(
                color: greyColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(fixPadding),
                    decoration: BoxDecoration(
                        color: lightGreyColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5.0),
                          topLeft: Radius.circular(5.0),
                        )),
                    child: Text(
                      'Payment',
                      style: buttonBlackTextStyle,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(fixPadding),
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          crossAxisAlignment:
                          CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              child: Text(
                                'payment',
                                style: listItemTitleStyle,
                              ),
                            ),
                            Container(
                              child: Text(
                                'Pay on Delivery',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: listItemTitleStyle,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Payment End
            heightSpace,
          ],
        ),
      ),
    );
  }
}

// viewOrderDialog(BuildContext context ,Order order,) {
//   double screenWidth = MediaQuery.of(context).size.width;
//   double screenHeight = MediaQuery.of(context).size.height;
//   // final helloWorld = 'hello world'.inCaps; // 'Hello world'
//   showDialog(
//     context: context,
//     barrierDismissible: true,
//     // barrierColor: Colors.blue,
//     builder: (BuildContext context) {
//       // return object of type Dialog
//       return Dialog(
//
//         elevation: 0.0,
//         shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(10.0)),
//         child: Wrap(
//           children: <Widget>[
//             Container(
//               width: screenWidth,
//               height: screenHeight*0.8,
//               child: Stack(
//                 children: [
//                   ListView(
//                     children: <Widget>[
//                       Container(
//                         padding: EdgeInsets.all(fixPadding),
//                         decoration: BoxDecoration(
//                             color: primaryColor,
//                             borderRadius: BorderRadius.vertical(top: Radius.circular(10))
//                         ),
//                         child: Row(
//                           mainAxisAlignment:
//                           MainAxisAlignment
//                               .center,
//                           children: [
//                             Text(order.orderStatus!.inCaps,
//                               /*order.orderStatus ==
//                                   "justOrdered"
//                                   ? "Received"
//                                   : order.orderStatus!.inCaps,
//
//                               ==
//                                   "active"||order.orderStatus=="startDelivering"
//                                   ? "Active"
//                                   : order.orderStatus ==
//                                   "delivering"?"Delivering"
//                                   :order.orderStatus ==
//                                   "finished"?"Finished"
//                                   :order.orderStatus ==
//                                   "delivered"? "Delivered":"Received",*/
//                               style:
//                               whiteLargeTextStyle,
//                             ),
//                             SizedBox(
//                               width: 10,
//                             ),
//                             Icon(
//                                 Icons
//                                     .check_circle,
//                                 color: order.orderStatus ==
//                                     "ordered"||order.orderStatus == "canceled"||order.orderStatus == "active" ? Colors.white54:order.orderStatus ==
//                                     "delivering"?Colors.orange:Colors.green
//
//                             )
//                           ],
//                         ),
//                       ),
//                       Container(
//                         width: screenWidth,
//                         padding: EdgeInsets.all(fixPadding),
//                         alignment: Alignment.center,
//                         color: myFirstColor,
//                         child: Container(
//                           width: screenWidth,
//                           child: Center(
//                             child: Text(
//                               'ID: ${order.id}',
//                               maxLines: 1,
//                               overflow: TextOverflow.ellipsis,
//                               style: wbuttonWhiteTextStyle,
//                             ),
//                           ),
//                         ),
//                       ),
//
//                       // Order Start
//                       Container(
//                         margin: EdgeInsets.all(fixPadding),
//                         decoration: BoxDecoration(
//                           color: greyColor.withOpacity(0.2),
//                           borderRadius: BorderRadius.circular(5.0),
//                         ),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: <Widget>[
//                             Container(
//                               alignment: Alignment.center,
//                               padding: EdgeInsets.all(fixPadding),
//                               decoration: BoxDecoration(
//                                   color: lightGreyColor,
//                                   borderRadius: BorderRadius.only(
//                                     topRight: Radius.circular(5.0),
//                                     topLeft: Radius.circular(5.0),
//                                   )),
//                               child: Text("Order",
//                                 style: buttonBlackTextStyle,
//                               ),
//                             ),
//                             Padding(
//                               padding: EdgeInsets.all(fixPadding),
//                               child: Column(
//                                 crossAxisAlignment:
//                                 CrossAxisAlignment.start,
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 children: <Widget>[
//                                   Row(
//                                     mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                     crossAxisAlignment:
//                                     CrossAxisAlignment.center,
//                                     children: <Widget>[
//                                       Text(
//                                         'Delivery Charges',
//                                         style: listItemTitleStyle,
//                                       ),
//                                       Text(
//                                         '\$${order.deliveryPrice}',
//                                         style: listItemTitleStyle,
//                                       ),
//                                     ],
//                                   ),
//                                   heightSpace,
//                                   Row(
//                                     mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                     crossAxisAlignment:
//                                     CrossAxisAlignment.center,
//                                     children: <Widget>[
//                                       Text(
//                                         'Promotion',
//                                         style: listItemTitleStyle,
//                                       ),
//                                       Text(
//                                         '${order.promotion??0}',
//                                         style: listItemTitleStyle,
//                                       ),
//                                     ],
//                                   ),
//                                   Divider(),
//                                   Row(
//                                     mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                     crossAxisAlignment:
//                                     CrossAxisAlignment.center,
//                                     children: <Widget>[
//                                       Text(
//                                         "total",
//                                         style: headingStyle,
//                                       ),
//                                       Text(
//                                         '\$${order.deliveryPriceWithPromotion}',
//                                         style: priceStyle,
//                                       ),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       //Order End
//                       // Location Start
//                       Container(
//                         margin: EdgeInsets.all(fixPadding),
//                         decoration: BoxDecoration(
//                           color: greyColor.withOpacity(0.2),
//                           borderRadius: BorderRadius.circular(5.0),
//                         ),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: <Widget>[
//                             Container(
//                               alignment: Alignment.center,
//                               padding: EdgeInsets.all(fixPadding),
//                               decoration: BoxDecoration(
//                                   color: lightGreyColor,
//                                   borderRadius: BorderRadius.only(
//                                     topRight: Radius.circular(5.0),
//                                     topLeft: Radius.circular(5.0),
//                                   )),
//                               child: Text(
//                                 "Location",
//                                 style: buttonBlackTextStyle,
//                               ),
//                             ),
//                             Padding(
//                               padding: EdgeInsets.all(fixPadding),
//                               child: Column(
//                                 crossAxisAlignment:
//                                 CrossAxisAlignment.start,
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 children: <Widget>[
//                                   Row(
//                                     mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                     crossAxisAlignment:
//                                     CrossAxisAlignment.center,
//                                     children: <Widget>[
//                                       Container(
//                                         width: ((screenWidth -
//                                             fixPadding * 13) /
//                                             2.0),
//                                         child: Text(
//                                           'PickUp',
//                                           style: listItemTitleStyle,
//                                         ),
//                                       ),
//                                       widthSpace,
//                                       Container(
//                                         width: ((screenWidth -
//                                             fixPadding * 13) /
//                                             2.0),
//                                         child: Text(
//                                           '${order.pickUpLocationLine}',
//                                           maxLines: 4,
//                                           overflow: TextOverflow.ellipsis,
//                                           style: listItemTitleStyle,
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                   heightSpace,
//                                   Row(
//                                     mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                     crossAxisAlignment:
//                                     CrossAxisAlignment.center,
//                                     children: <Widget>[
//                                       Container(
//                                         width: ((screenWidth -
//                                             fixPadding * 13) /
//                                             2.0),
//                                         child: Text(
//                                           'DropOff',
//                                           style: listItemTitleStyle,
//                                         ),
//                                       ),
//                                       widthSpace,
//                                       Container(
//                                         width: ((screenWidth -
//                                             fixPadding * 13) /
//                                             2.0),
//                                         child: Text(
//                                           '${order.dropOffLocationLine}',
//                                           maxLines: 4,
//                                           overflow: TextOverflow.ellipsis,
//                                           style: listItemTitleStyle,
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       // Location End
//
//                       // Customer Start
//                       Container(
//                         margin: EdgeInsets.all(fixPadding),
//                         decoration: BoxDecoration(
//                           color: greyColor.withOpacity(0.2),
//                           borderRadius: BorderRadius.circular(5.0),
//                         ),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: <Widget>[
//                             Container(
//                               alignment: Alignment.center,
//                               padding: EdgeInsets.all(fixPadding),
//                               decoration: BoxDecoration(
//                                   color: lightGreyColor,
//                                   borderRadius: BorderRadius.only(
//                                     topRight: Radius.circular(5.0),
//                                     topLeft: Radius.circular(5.0),
//                                   )),
//                               child: Text(
//                                 'Customer',
//                                 style: buttonBlackTextStyle,
//                               ),
//                             ),
//                             Padding(
//                               padding: EdgeInsets.all(fixPadding),
//                               child: Column(
//                                 crossAxisAlignment:
//                                 CrossAxisAlignment.start,
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 children: <Widget>[
//                                   Row(
//                                     mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                     crossAxisAlignment:
//                                     CrossAxisAlignment.center,
//                                     children: <Widget>[
//                                       Text('Name',
//                                         style: listItemTitleStyle,
//                                       ),
//                                       Text(
//                                         '${order.nameOfOrderUser}',
//                                         maxLines: 1,
//                                         overflow: TextOverflow.ellipsis,
//                                         style: listItemTitleStyle,
//                                       ),
//                                     ],
//                                   ),
//                                   heightSpace,
//                                   Row(
//                                     mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                     crossAxisAlignment:
//                                     CrossAxisAlignment.center,
//                                     children: <Widget>[
//                                       Text(
//                                         'Phone',
//                                         style: listItemTitleStyle,
//                                       ),
//                                       Text(
//                                         '${order.phoneNumberOfOrderUser}',
//                                         maxLines: 1,
//                                         overflow: TextOverflow.ellipsis,
//                                         style: listItemTitleStyle,
//                                       ),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       //Customer End
//                       //Driver Start
//                       Container(
//                         margin: EdgeInsets.all(fixPadding),
//                         decoration: BoxDecoration(
//                           color: greyColor.withOpacity(0.2),
//                           borderRadius: BorderRadius.circular(5.0),
//                         ),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: <Widget>[
//                             Container(
//                               alignment: Alignment.center,
//                               padding: EdgeInsets.all(fixPadding),
//                               decoration: BoxDecoration(
//                                   color: lightGreyColor,
//                                   borderRadius: BorderRadius.only(
//                                     topRight: Radius.circular(5.0),
//                                     topLeft: Radius.circular(5.0),
//                                   )),
//                               child: Text(
//                                 'Driver',
//                                 style: buttonBlackTextStyle,
//                               ),
//                             ),
//                             Padding(
//                               padding: EdgeInsets.all(fixPadding),
//                               child: Column(
//                                 crossAxisAlignment:
//                                 CrossAxisAlignment.start,
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 children: <Widget>[
//                                   Row(
//                                     mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                     crossAxisAlignment:
//                                     CrossAxisAlignment.center,
//                                     children: <Widget>[
//                                       Text('Driver',
//                                         style: listItemTitleStyle,
//                                       ),
//                                       Text(
//                                         '${order.nameOfOrderDriver??"not available"}',
//                                         maxLines: 1,
//                                         overflow: TextOverflow.ellipsis,
//                                         style: listItemTitleStyle,
//                                       ),
//                                     ],
//                                   ),
//                                   heightSpace,
//                                   Row(
//                                     mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                     crossAxisAlignment:
//                                     CrossAxisAlignment.center,
//                                     children: <Widget>[
//                                       Text(
//                                         'Phone',
//                                         style: listItemTitleStyle,
//                                       ),
//                                       Text(
//                                         '${order.phoneNumberOfOrderDriver??"not available"}',
//                                         maxLines: 1,
//                                         overflow: TextOverflow.ellipsis,
//                                         style: listItemTitleStyle,
//                                       ),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       //Driver End
//
//                       // Payment Start
//                       Container(
//                         margin: EdgeInsets.all(fixPadding),
//                         decoration: BoxDecoration(
//                           color: greyColor.withOpacity(0.2),
//                           borderRadius: BorderRadius.circular(5.0),
//                         ),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: <Widget>[
//                             Container(
//                               alignment: Alignment.center,
//                               padding: EdgeInsets.all(fixPadding),
//                               decoration: BoxDecoration(
//                                   color: lightGreyColor,
//                                   borderRadius: BorderRadius.only(
//                                     topRight: Radius.circular(5.0),
//                                     topLeft: Radius.circular(5.0),
//                                   )),
//                               child: Text(
//                                 'Payment',
//                                 style: buttonBlackTextStyle,
//                               ),
//                             ),
//                             Padding(
//                               padding: EdgeInsets.all(fixPadding),
//                               child: Column(
//                                 crossAxisAlignment:
//                                 CrossAxisAlignment.start,
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 children: <Widget>[
//                                   Row(
//                                     mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                     crossAxisAlignment:
//                                     CrossAxisAlignment.center,
//                                     children: <Widget>[
//                                       Container(
//                                         child: Text(
//                                           'payment',
//                                           style: listItemTitleStyle,
//                                         ),
//                                       ),
//                                       Container(
//                                         child: Text(
//                                           'Pay on Delivery',
//                                           maxLines: 1,
//                                           overflow: TextOverflow.ellipsis,
//                                           style: listItemTitleStyle,
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       // Payment End
//                       heightSpace,
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: <Widget>[
//                           InkWell(
//                             onTap: () async {
//                               Navigator.pop(context);
//                               // await rejectReasonDialog();
//                             },
//                             child: Container(
//                               width: (screenWidth / 3.5),
//                               alignment: Alignment.center,
//                               padding: EdgeInsets.all(5),
//                               decoration: BoxDecoration(
//                                 color: darkBlueColor,
//                                 borderRadius: BorderRadius.circular(5.0),
//                               ),
//                               child: Text(
//                                 "Okay!",
//                                 style: whiteBottonTextStyle,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       heightSpace,
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       );
//     },
//   );
//   return ;
// }

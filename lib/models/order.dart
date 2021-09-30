import 'package:flutter/material.dart';

class Order extends ChangeNotifier{
  String?   id;
  String?   orderStatus;
  String?   title;
  String?   description;
  String?   height;
  String?   width;
  String?   depth;
  String?   weight;
  String?   pickUpLocationLine;
  String?   dropOffLocationLine;
  String?   pickUpLocation;
  String?   dropOffLocation;
  String?   comment;
  String?   nameOfOrderUser;
  // int      priceWithoutDelivery;
  int?      deliveryPrice;
  int?      deliveryPriceWithPromotion;
  String?   phoneNumberOfOrderUser;
  String?   promotionCode;
  int?      promotion;
  DateTime? orderBeginDate;
  DateTime? orderApproximateDeliveryDate;
  String?   nameOfOrderDriver;
  String?   phoneNumberOfOrderDriver;
  String?   userTokenFromMessaging;
  Order(
      {
        this.id,
        this.orderStatus,
        this.title,
        this.description,
        this.height,
        this.width,
        this.depth,
        this.weight,
        this.pickUpLocation,
        this.dropOffLocation,
        this.comment,
        // this.priceWithoutDelivery,
        this.deliveryPrice,
        this.deliveryPriceWithPromotion,
        this.nameOfOrderUser,
        this.phoneNumberOfOrderUser,
        this.orderBeginDate,
        this.orderApproximateDeliveryDate,
        this.pickUpLocationLine,
        this.dropOffLocationLine,
        this.nameOfOrderDriver,
        this.phoneNumberOfOrderDriver,
        this.promotionCode,
        this.promotion,
        this.userTokenFromMessaging
      });

  List orders = [];
}
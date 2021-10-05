import 'package:cloud_firestore/cloud_firestore.dart';

class SearchForOrder {

  searchByExactPhoneNumber(String? phoneNumber ){
    return FirebaseFirestore.instance
        .collection('orders')
        .where("phoneNumberOfOrderUser", isEqualTo: phoneNumber)
        .snapshots();
}
  searchByPComparingPhoneNumber(String? phoneNumber ){
    return  FirebaseFirestore.instance.collection("orders")
        .where("phoneNumberOfOrderUser", isGreaterThanOrEqualTo: phoneNumber).snapshots();
  }
}
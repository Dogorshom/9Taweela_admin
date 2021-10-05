import 'package:cloud_firestore/cloud_firestore.dart';

class SearchForDriver {
  searchByExactPhoneNumber(String? phoneNumber ){
    return FirebaseFirestore.instance
        .collection('users')
        .where("phoneNumber", isEqualTo: phoneNumber)
        .snapshots();
  }
  searchByPComparingPhoneNumber(String? phoneNumber ){
    return  FirebaseFirestore.instance.collection("users")
        .where("phoneNumber", isGreaterThanOrEqualTo: phoneNumber).snapshots();
  }
}
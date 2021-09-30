class User{
  String? id;
  String? name;
  String? email;
  String? phoneNumber;
  String? address;
  String? imageURL;
  bool  ? emailVerified;
  final String? userType = "Admin";
  User({this.id,this.name,this.email,this.phoneNumber
    ,this.address,this.imageURL,this.emailVerified});
}
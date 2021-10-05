class AdminUser{
  String? id;
  String? name;
  String? email;
  String? phoneNumber;
  String? address;
  String? imageURL;
  bool  ? emailVerified;
  final String? userType = "Admin";
  AdminUser({this.id,this.name,this.email,this.phoneNumber
    ,this.address,this.imageURL,this.emailVerified});
}
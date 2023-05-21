import 'dart:convert';

class VendorModel {
  String email;
  String id;
  String imageUrl;
  String password;
  String vendorName;
  VendorModel({
    required this.email,
    required this.id,
    required this.imageUrl,
    required this.password,
    required this.vendorName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      "email":email,
      'id': id,
      'imageUrl': imageUrl,
      'password': password,
      'vendorName': vendorName,
    };
  }

  factory VendorModel.fromMap(Map<String, dynamic> map) {
    return VendorModel(
      email: map['email'] as String,
      id: map['id'] as String,
      imageUrl: map['imageUrl'] as String,
      password: map['password'] as String,
      vendorName: map['vendor_name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory VendorModel.fromJson(String source) =>
      VendorModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'VendorModel( email: $email,id: $id, imageUrl: $imageUrl, password: $password, vendorName: $vendorName)';
  }
}

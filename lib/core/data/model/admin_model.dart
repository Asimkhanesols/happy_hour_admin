import 'package:cloud_firestore/cloud_firestore.dart';

class AdminModel {
  String name;
  String email;
  String mobile;

  AdminModel({required this.name, required this.email, required this.mobile});


  factory AdminModel.fromSnapshot(DocumentSnapshot snapshot) {
    final data = snapshot.data() as Map<String, dynamic>;
    return AdminModel(
        name: data['name'] ?? '',
        email: data['email'] ?? '',
        mobile: data['mobile'] ?? '',
    );
  }

}



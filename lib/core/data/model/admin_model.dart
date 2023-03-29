import 'package:cloud_firestore/cloud_firestore.dart';

class Admin {
  String name;
  String email;
  String mobile;

  Admin({required this.name, required this.email, required this.mobile});


  factory Admin.fromSnapshot(DocumentSnapshot snapshot) {
    final data = snapshot.data() as Map<String, dynamic>;
    return Admin(
        name: data['name'] ?? '',
        email: data['email'] ?? '',
        mobile: data['mobile'] ?? '',
    );
  }

}

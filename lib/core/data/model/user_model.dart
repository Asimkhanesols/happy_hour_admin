

import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  final String id;
  final String userName;
  final String email;
  final bool isBusiness;
  final String mobileNumber;

  User({
    required this.id,
    required this.userName,
    required this.email,
    required this.isBusiness,
    required this.mobileNumber,
  });

  factory User.fromSnapshot(DocumentSnapshot snapshot) {
    final data = snapshot.data() as Map<String, dynamic>;
    return User(
      id: snapshot.id,
      userName: data['username'] ?? '',
      email: data['email'] ?? '',
      isBusiness: data['isBusiness'] ?? '',
      mobileNumber: data['mobilenumber'] ?? '',
    );
  }
}
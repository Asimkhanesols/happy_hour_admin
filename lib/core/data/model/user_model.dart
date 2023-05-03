

import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String id;
  final String userName;
  final String email;
  final bool isBusiness;
  final String mobileNumber;
  bool? isSuspended;

  UserModel({
    required this.id,
    required this.userName,
    required this.email,
    required this.isBusiness,
    required this.mobileNumber,
    this.isSuspended
  });

  factory UserModel.fromSnapshot(DocumentSnapshot snapshot) {
    final data = snapshot.data() as Map<String, dynamic>;
    return UserModel(
      id: snapshot.id,
      userName: data['username'] ?? '',
      email: data['email'] ?? '',
      isBusiness: data['isBusiness'] ?? '',
      mobileNumber: data['mobilenumber'] ?? '',
      isSuspended: data['isSuspended']
    );
  }
}
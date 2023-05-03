import 'package:cloud_firestore/cloud_firestore.dart';

class HappyHourModel {
  String? id;
  String? businessName;
  String? businessAddress;
  String? phoneNumber;
  List? day;
  List? time;
  List? foodItem;
  List? drinkSpecial;
  List? dailySpecial;
  List? event;
  List? amenities;
  List? barType;
  String? businessCard;
  String? businessLogo;
  String? happyHourMenu;
  String? card;

  HappyHourModel({
    this.id,
    this.businessName,
    this.businessAddress,
    this.phoneNumber,
    this.day,
    this.time,
    this.foodItem,
    this.drinkSpecial,
    this.dailySpecial,
    this.event,
    this.amenities,
    this.barType,
    this.businessCard,
    this.businessLogo,
    this.happyHourMenu,
    this.card,
  });

  factory HappyHourModel.fromMap(DocumentSnapshot snapshot) {
    final data = snapshot.data() as Map<String, dynamic>;
    // print(data);
    return HappyHourModel(
      id: data['id'],
      businessName: data['businessName'],
      businessAddress: data['businessAddress'],
      phoneNumber: data['phoneNumber'],
      day: data['day'] ?? [],
      time: data['time'] ?? [],
      foodItem: data['foodName'] ?? [],
      drinkSpecial: data['drinkitemName'] ?? [],
      dailySpecial: data['dailyspecial'] ?? [],
      event: data['event'] ?? [],
      amenities: data['amenities'] ?? [],
      barType: data['barType'] ?? [],
      businessCard: data['businessCard'],
      businessLogo: data['businessLogo'],
      happyHourMenu: data['happyHourMenu'],
      card: data['card'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'businessName': businessName,
      'businessAddress': businessAddress,
      'phoneNumber': phoneNumber,
      'day': day,
      'time': time,
      'foodName': foodItem,
      'drinkitemName': drinkSpecial,
      'dailyspecial': dailySpecial,
      'event': event,
      'amenities': amenities,
      'barType': barType,
      'businessCard': businessCard,
      'businessLogo': businessLogo,
      'happyHourMenu': happyHourMenu,
      'card': card,
    };
  }
}

class ReportHourModel {
  String? hourId;
  String? reportText;
  List? reportImage;
  Timestamp? reportTime;
  String? status;
  String? uid;

  ReportHourModel(
      {this.hourId,
      this.reportText,
      this.reportImage,
      this.reportTime,
      this.status,
      this.uid});
  factory ReportHourModel.fromDocument(DocumentSnapshot snapshot) {
    final data = snapshot.data() as Map<String, dynamic>;
    // print(data);
    return ReportHourModel(
        hourId: data['hourId'],
        reportText: data['reportText'],
        reportImage: data['reportImages'] ?? [],
        reportTime: data['reportTime'],
        status: data['status'],
        uid: data['uid']);
  }

  Map<String, dynamic> toMap() {
    return {
      'hourId': hourId,
      'reportText': reportText,
      'reportImages': reportImage,
      'reportTime': reportTime,
      'status': status,
      'uid': uid
    };
  }
}

class ClaimHourModel {
  String? reportText;
  String? businessCardImage;
  Timestamp? reportTime;
  String? status;
  String? uid;

  ClaimHourModel(
      {this.reportText,
      this.businessCardImage,
      this.reportTime,
      this.status,
      this.uid});
  factory ClaimHourModel.fromDocument(DocumentSnapshot snapshot) {
    final data = snapshot.data() as Map<String, dynamic>;
    // print(data);
    return ClaimHourModel(
        reportText: data['reportText'],
        businessCardImage: data['businessCardImage'],
        reportTime: data['reportTime'],
        status: data['status'],
        uid: data['userId']);
  }

  Map<String, dynamic> toMap() {
    return {
      'reportText': reportText,
      'businessCardImage': businessCardImage,
      'reportTime': reportTime,
      'status': status,
      'uid': uid
    };
  }
}

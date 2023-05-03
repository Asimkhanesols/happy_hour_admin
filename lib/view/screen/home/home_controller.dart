import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{



  // total users in the App
  var userCount = 0.obs;
  // business user

  var businessAccount = 0.obs;

  var standardUsers = 0.obs ;

  // total happy hours

  var totalHappyHours = 0.obs;



  @override
  void onInit() {
    super.onInit();
    fetchUserCount();
    getBusinessUsers();
    getStandardUsers();
    getTotalHappyHours();

  }
   // total users of the app
  void fetchUserCount() async {
    try {
      var querySnapshot =
      await FirebaseFirestore.instance.collection('users').get();
      userCount.value = querySnapshot.size;
    } catch (e) {
      print(e);
    }
  }

  // total business Account
  void getBusinessUsers() async {
    try {
      final querySnapshot = await FirebaseFirestore.instance
          .collection('users')
          .where('isBusiness', isEqualTo: true)
          .get();
      businessAccount.value = querySnapshot.size;
    } catch (e) {
      print('Error: $e');
    }
  }


  // total Standard  Account

  void getStandardUsers() async {
    try {
      final querySnapshot = await FirebaseFirestore.instance
          .collection('users')
          .where('isBusiness', isEqualTo: false)
          .get();
      standardUsers.value = querySnapshot.size;
    } catch (e) {
      print('Error: $e');
    }
  }

  // total happy hour
  void getTotalHappyHours() async {
    try {
      var querySnapshot =
      await FirebaseFirestore.instance.collection('happyhours').get();
      totalHappyHours.value = querySnapshot.size;
    } catch (e) {
      print(e);
    }
  }
}
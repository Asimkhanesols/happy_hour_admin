import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../../core/data/model/admin_model.dart';


class UserController extends  GetxController{

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
   }

  var formKey = GlobalKey<FormState>();
  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore fireStore = FirebaseFirestore.instance;

  // textEditing controller
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var mobileNumberController = TextEditingController();


  //searching user by name
  var searchUserController = TextEditingController();

  // Declare a variable to store the search query
  var searchQuery = "".obs;

  // Declare a method to update the search query
  void updateSearchQuery(String query) {
    searchQuery.value = query;
    update();
   }

  void clear(){

    nameController.clear();
    emailController.clear();
    mobileNumberController.clear();
  }

  String? validateName (String? value){
    if(value == null || value.isEmpty){
      return 'Name field is empty';
    }
    return null;
  }
  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Field is empty'.tr;
    } else if (!GetUtils.isEmail(value)) {
      return "Invalid Email".tr;
    }
    return null;
  }
  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Field is empty'.tr;
    } else if (value.length < 8) {
      return "Password should be 8 or more characters".tr;
    }
    return null;
  }


  String? validateMobile(String? value) {
    if (value == null || value.isEmpty) {
      return 'Field is empty'.tr;
    } else if (value.length < 11) {
      return "Number should be 11  characters";
    }
    return null;
  }

    // register the admin

   Future <void> registerAdmin (BuildContext context)async{

     try{

       if(formKey.currentState!.validate()){
         // create admin with email and password
         UserCredential userCredential = await auth.createUserWithEmailAndPassword(
             email: emailController.text,
             password: passwordController.text);


         AdminModel admin = AdminModel(

           name: nameController.text,
           email: emailController.text,
           mobile: mobileNumberController.text,

         );




         // add to fireStore
         await fireStore.collection('admin').doc().set({
           'name' : admin.name,
           'email': admin.email,
           'mobile': admin.mobile


         }).then((value) {


           Get.snackbar(


               "Congrats ", "You have successfully added to fireStore " ,
            snackPosition: SnackPosition.TOP


           );
           clear();
           Navigator.pop(context);
         });

       }
     }
     catch(e){
       print(e);
     }

}

  // void deleteUser(String uid) async {
  //   try {
  //     // First, delete the user's data from Cloud Firestore
  //     await fireStore.collection('users').doc(uid).delete();
  //
  //     // Then, delete the user's account from Firebase Authentication
  //     final user = auth.currentUser!;
  //     if (user.uid == uid) {
  //       // The user is signed in, so sign them out first
  //       await auth.signOut();
  //     }
  //     await user.delete();
  //   } catch (e) {
  //     print('Failed to delete user: $e');
  //   }
  // }

  Future<bool> checkUserSuspensionStatus(String userId) async {
    final usersRef = FirebaseFirestore.instance.collection('users');
    final doc = await usersRef.doc(userId).get();
    final isSuspended = doc.data()!['isSuspended'] ?? false;
     return isSuspended;
  }


  final CollectionReference usersRef =
  FirebaseFirestore.instance.collection('users');
  Future<void> suspendUser(String userId) async {
    final usersRef = FirebaseFirestore.instance.collection('users');
    try {
      await usersRef.doc(userId).set({'isSuspended': true}, SetOptions(merge: true));
      final isSuspended = await checkUserSuspensionStatus(userId);

      if (isSuspended) {
        Get.snackbar('Success', 'User suspended successfully');
      } else {
        Get.snackbar('Error', 'User could not be suspended');
      }
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }


   Future<String?> getHappyHourCount(String userId) async {
    try {
      final querySnapshot = await FirebaseFirestore.instance
          .collection('happyhours')
          .where('id', isEqualTo: userId)
          .get();

      print("SIze of my querty is ${querySnapshot.size}");
      print("the user are : ${userId}");

      return querySnapshot.size.toString();

    } catch (e) {
      print('Error: $e');
    }
    return null;
  }


  // suspend the user











}
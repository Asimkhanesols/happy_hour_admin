import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../core/data/model/admin_model.dart';


class UserController extends  GetxController{


  var formKey = GlobalKey<FormState>();


  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore fireStore = FirebaseFirestore.instance;


  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var mobileNumberController = TextEditingController();

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

  String? validateMobile(String? value) {
    if (value == null || value.isEmpty) {
      return 'Field is empty'.tr;
    } else if (value.length < 11) {
      return "Number should be 11  characters";
    }
    return null;
  }

    // register the admin

   Future <void> registerAdmin (context)async{

     try{

       if(formKey.currentState!.validate()){
         // create admin with email and password
         // UserCredential userCredential = await auth.createUserWithEmailAndPassword(
         //     email: emailController.text,
         //     password: passwordController.text);

         Admin admin = Admin(

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


               "Conrgrats ", "You have successfully added to fireStore " ,
            snackPosition: SnackPosition.TOP


           );
          Navigator.pop(context);
         });

       }
     }
     catch(e){
       print(e);
     }

}

  void deleteUser(String uid) async {
    try {
      // First, delete the user's data from Cloud Firestore
      await fireStore.collection('users').doc(uid).delete();

      // Then, delete the user's account from Firebase Authentication
      final user = auth.currentUser!;
      if (user.uid == uid) {
        // The user is signed in, so sign them out first
        await auth.signOut();
      }
      await user.delete();
    } catch (e) {
      print('Failed to delete user: $e');
    }
  }





}
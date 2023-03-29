import 'package:add_happy_hour_admin/view/screen/dashboard/dashboard_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController{
  final box = GetStorage();

  final formKey = GlobalKey<FormState>();

  //loading
  var isLoading = false.obs;

  // * observable variables.
  final _rememberMe = false.obs;
  bool get rememberMe => _rememberMe.value;
  set rememberMe(value) => _rememberMe.value = value;



  var emailController =  TextEditingController(text: 'admin@gmail.com');
  var passwordController =  TextEditingController(text: 'admin123');


  String loginRememberMeStatus = "loginRememberMeStatus";
  // validation

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

  Future createUser() async {
    try {
      // Set isLoading to true to show the loading indicator
      isLoading.value = true;

      FirebaseAuth auth = FirebaseAuth.instance;
      if (formKey.currentState!.validate()) {
        // // Save the "Remember Me" status to GetStorage
        // box.write(loginRememberMeStatus, rememberMe);
        // await auth.signInWithEmailAndPassword(
        //   email: emailController.text,
        //   password: passwordController.text,
        // );

         UserCredential userCredential = await
         auth.signInWithEmailAndPassword(
             email: emailController.text,
             password: passwordController.text);
         box.write('user_email', userCredential.user!.email);


        Get.to(() =>   DashBoardScreen());
      } else {
        'user not found ';
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    } finally {
      // Set isLoading to false to hide the loading indicator
      isLoading.value = false;
    }
  }





   }



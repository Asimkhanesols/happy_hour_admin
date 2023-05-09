import 'package:add_happy_hour_admin/view/screen/dashboard/dashboard_screen.dart';
 import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController{

  @override
  void onInit() {
    super.onInit();

    // Check if "Remember Me" was selected in a previous session
    bool rememberMeStatus = box.read('rememberMe') ?? false;
    rememberMe.value = rememberMeStatus;

    // If "Remember Me" was selected, populate the email and password fields
    if (rememberMe.value) {
      String? savedEmail = box.read('email');
      String? savedPassword = box.read('password');
      emailController.text = savedEmail ?? '';
      passwordController.text = savedPassword ?? '';
    }
  }
  // variables
  var rememberMe = false.obs;

  final box = GetStorage();
  final formKey = GlobalKey<FormState>();
  var isLoading = false.obs;

  // * observable variables.
  // final _rememberMe = false.obs;
  // bool get rememberMe => _rememberMe.value;
  // set rememberMe(value) => _rememberMe.value = value;



  var emailController =  TextEditingController(text: 'admin@gmail.com');
  var passwordController =  TextEditingController(text: 'admin123');


  String loginRememberMeStatus = "loginRememberMeStatus";
  String loginEmailKey = 'loginEmailKey';
  String loginPasswordKey = 'loginPasswordKey';

  // validation of text filed name and password

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




  // function for log in Admin


  Future loginAdmin() async {
    try {
      // Set isLoading to true to show the loading indicator
      isLoading.value = true;

      FirebaseAuth auth = FirebaseAuth.instance;
      if (formKey.currentState!.validate()) {
        // // Save the "Remember Me" status to GetStorage
        //  box.write(loginRememberMeStatus, rememberMe);


        // await auth.signInWithEmailAndPassword(
        //   email: emailController.text,
        //   password: passwordController.text,
        // );

         UserCredential userCredential = await
         auth.signInWithEmailAndPassword(
             email: emailController.text,
             password: passwordController.text);
        // box.write('user_email', userCredential.user!.email);
         if (rememberMe.value) {
           box.write('email', emailController.text);
           box.write('password', passwordController.text);
         } else {
           // Clear the email and password fields in GetStorage
           box.remove('email');
           box.remove('password');
         }

        Get.offAll(() =>   DashBoardScreen());
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



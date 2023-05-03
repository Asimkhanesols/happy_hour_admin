

import 'package:add_happy_hour_admin/core/utils/strings.dart';
import 'package:add_happy_hour_admin/view/screen/auth_screen/login_screen.dart';
import 'package:add_happy_hour_admin/view/screen/flag_report/flag_report_screen.dart';
import 'package:add_happy_hour_admin/view/screen/happy_hours/active_happy_hours_screen.dart';
import 'package:add_happy_hour_admin/view/screen/packages/packages_screen.dart';
 import 'package:add_happy_hour_admin/view/screen/users/users_screen.dart';
import 'package:add_happy_hour_admin/view/screen/welcome/welcome_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';


import '../home/home_screen.dart';

class DashBoardController extends GetxController{

  String? docId;

  // options for drop down
  var selectedOption = 'Active happy hour'.obs;
  // option for request happy hour
  var option = 'Happy hour request'.obs;

  //........ Variables Initialization for Admin Panel Navigation.......//
  var isNew = false.obs;

  //........  this variables and getter setter for Screen List.......//
  final _selectedIndex = 0.obs;
  int get selectedIndex => _selectedIndex.value;
  set selectedIndex(value) => _selectedIndex.value = value;
//........  this variables and getter setter for NewScreen List.......//
  final _tempSelectedIndex = 0.obs;
  int get tempSelectedIndex => _tempSelectedIndex.value;
  set tempSelectedIndex(value) => _tempSelectedIndex.value = value;

//........  this is for new screen.......//
  onDestinationSelected(index ,    ) {
    isNew.value = false;
    selectedIndex = index;

  }
  //........  this is for Selected Index.......//
  List<Widget> screens = [
    const HomeScreen(),
    ActiveHappyHourScreen(),
    UsersScreen(),
    const WelcomeScreen(),
    FlagReportScreen(),
    const PackagesScreen(),


  ];
  List<Widget> newScreens = [
    const HomeScreen(),
     ActiveHappyHourScreen(),
     UsersScreen(),
    const WelcomeScreen(),
    FlagReportScreen(),
    const PackagesScreen(),


  ];

  // homeScreen container text
  List totalsList = [
  totalHappyHour,totalUser ,  totalBussAccount ,totHapHourReq , totStandAcc
];

 // sign out method

  signOut(){
    FirebaseAuth auth = FirebaseAuth.instance;
    auth.signOut();
    Get.to(()=> LoginScreen());
  }
}
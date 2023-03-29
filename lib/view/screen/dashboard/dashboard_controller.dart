

import 'package:add_happy_hour_admin/core/utils/strings.dart';
import 'package:add_happy_hour_admin/view/screen/auth_screen/login_screen.dart';
import 'package:add_happy_hour_admin/view/screen/flag_report/flag_report_screen.dart';
import 'package:add_happy_hour_admin/view/screen/happy_hours/happy_hours_screen.dart';
import 'package:add_happy_hour_admin/view/screen/packages/packages_screen.dart';
 import 'package:add_happy_hour_admin/view/screen/users/users_screen.dart';
import 'package:add_happy_hour_admin/view/screen/welcome/welcome_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';


import '../home/home_screen.dart';

class DashBoardController extends GetxController{

  //
  var selectedOption = 'Active happy hour'.obs;

  //........ Variables Initialization for Admin Panael Nvigations.......//
  var isNew = false.obs;

  //........  this variables and gettter setter for Screen List.......//
  final _selectedIndex = 0.obs;
  int get selectedIndex => _selectedIndex.value;
  set selectedIndex(value) => _selectedIndex.value = value;
//........  this variables and gettter setter for NewScreen List.......//
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
    const HappyHourScreen(),
       UsersScreen(),
    const WelcomeScreen(),
    const FlagReportScreen(),
    const PackagesScreen(),


  ];
  List<Widget> newScreens = [
    const HomeScreen(),
    const HappyHourScreen(),
     UsersScreen(),
    const WelcomeScreen(),
    const FlagReportScreen(),
    const PackagesScreen(),


  ];


  List totalsList = [
  totalHappyHour,totalUser ,  totalBussAccount ,totHapHourReq , totStandAcc
];



  signOut(){
    FirebaseAuth auth = FirebaseAuth.instance;
    auth.signOut();
    Get.to(()=> LoginScreen());
  }
}
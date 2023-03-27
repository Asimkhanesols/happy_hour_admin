import 'package:add_happy_hour_admin/core/utils/assets_constants.dart';
import 'package:add_happy_hour_admin/core/utils/colors.dart';
import 'package:add_happy_hour_admin/view/screen/happy_hours/happy_hours_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/utils/styles.dart';















// class SideMenu extends StatelessWidget {
//   const SideMenu({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       backgroundColor: whiteColor,
//       child: ListView(
//         children: [
//           DrawerHeader(
//             child: Image.asset(imgLogo),
//           ),
//           DrawerListTile(
//             title: "Dashboard",
//             image: imgDash,
//             onTap: () {},
//           ),
//           DrawerListTile(
//             title: "Happy Hours",
//             image: imgHappyHour,
//             onTap: () {},
//           ),
//           DrawerListTile(
//             title: "Users",
//             image: imgUser,
//             onTap: () {
//               Get.to(()=> HappyHourScreen());
//             },
//           ),
//           DrawerListTile(
//             title: "Welcome Screen",
//            image: imgUser,
//             onTap: () {},
//           ),
//           DrawerListTile(
//             title: "Flag Reports",
//             image: imgFlag,
//             onTap: () {},
//           ),
//           DrawerListTile(
//             title: "Packages",
//             image: imgPackage,
//             onTap: () {},
//           ),
//
//         ],
//       ),
//     );
//   }
// }
//
// class DrawerListTile extends StatelessWidget {
//   const DrawerListTile({
//     Key? key,
//     // For selecting those three line once press "Command+D"
//     required this.title,
//     required this.image,
//     required this.onTap,
//   }) : super(key: key);
//
//   final String title, image;
//   final VoidCallback onTap;
//
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       onTap: onTap,
//       horizontalTitleGap: 0.0,
//       leading: Image.asset(
//         image,
//         color: Colors.black,
//
//         height: 16,
//       ),
//       title: Text(
//         title,
//         style: TextStyles.greyBodyText,
//       ),
//     );
//   }
// }
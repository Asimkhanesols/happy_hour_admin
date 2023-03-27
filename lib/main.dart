import 'package:add_happy_hour_admin/core/utils/theme_data.dart';
import 'package:add_happy_hour_admin/view/screen/auth_screen/login_screen.dart';
import 'package:add_happy_hour_admin/view/screen/dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';


void main() {


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // builder: (context, widget) {
      //   return ResponsiveWrapper.builder(
      //     BouncingScrollWrapper.builder(context, widget!),
      //     maxWidth: 2460,
      //     minWidth: 480,
      //     defaultName: DESKTOP,
      //     defaultScale: true,
      //     breakpoints: [
      //       const ResponsiveBreakpoint.resize(320,
      //           name: MOBILE, scaleFactor: 0.9),
      //       const ResponsiveBreakpoint.resize(480, name: MOBILE),
      //       const ResponsiveBreakpoint.resize(600, name: MOBILE),
      //       const ResponsiveBreakpoint.autoScale(850, name: TABLET),
      //       const ResponsiveBreakpoint.autoScale(1200, name: DESKTOP),
      //       const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
      //
      //     ],
      //   );
      // },
      title: 'Happy hour',
      theme: CustomTheme.lightTheme,
      home: const LoginScreen(),
    );
  }
}


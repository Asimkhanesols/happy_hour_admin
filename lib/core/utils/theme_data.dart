import 'package:flutter/material.dart';

import 'colors.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    //1
    return ThemeData(
      //2
      primaryColor: primaryColor,
      scaffoldBackgroundColor: halfWhiteColor,
      fontFamily: 'Poppins',
      iconTheme: const IconThemeData(),
      textButtonTheme: const TextButtonThemeData(),

      appBarTheme: AppBarTheme(
          centerTitle: true,
          elevation: 0,
          color: Colors.transparent,
          iconTheme: const IconThemeData(color: Colors.black, size: 35),
          titleTextStyle:
              TextStyle(fontSize: 22, color: Colors.black.withOpacity(0.75))),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        elevation: 5,
        unselectedIconTheme: IconThemeData(
          color: primaryColor,
        ),
        showUnselectedLabels: true,
        unselectedItemColor: primaryColor,
        backgroundColor: primaryColor,
      ),

      textTheme: const TextTheme(
        headlineLarge: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontFamily: 'Poppins'),
        headlineMedium: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.black,
            fontFamily: 'Poppins'),
        headlineSmall: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontFamily: 'Poppins'),
        bodyLarge: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontFamily: 'Poppins'),
        bodyMedium: TextStyle(
            color: Colors.black,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500),
        bodySmall: TextStyle(color: Colors.grey, fontFamily: 'Poppins'),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          textStyle: const TextStyle(
            fontWeight: FontWeight.w500,
            fontFamily: 'Poppins',
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          elevation: 3,
          //side:
          //BorderSide(color: Colors.black, width: 2.5),
        ),
      ),

      checkboxTheme: CheckboxThemeData(
        checkColor: MaterialStateProperty.all(primaryColor),
        fillColor: MaterialStateProperty.all(primaryColor),
        shape: RoundedRectangleBorder(
            // Making around shape
            borderRadius: BorderRadius.circular(2)),
      ),

      inputDecorationTheme: InputDecorationTheme(
        suffixIconColor: Colors.grey,
         // hintStyle: TextStyles.greyBodyText?.copyWith(
         //   fontWeight: FontWeight.normal
         // ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 18, horizontal: 30),
        filled: true,
        fillColor: Colors.white,
        prefixIconColor: primaryColor,

        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide.none),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),

            borderSide: BorderSide.none),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide.none),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide.none),
      ),
    );
  }


  static ThemeData get darkTheme {
    //1
    return ThemeData(
      //2
      primaryColor: primaryColor,
      scaffoldBackgroundColor: Colors.black,
      fontFamily: 'Poppins',
      iconTheme: const IconThemeData(),
      textButtonTheme: const TextButtonThemeData(),

      appBarTheme: AppBarTheme(
          centerTitle: true,
          elevation: 0,
          color: Colors.transparent,
          iconTheme: const IconThemeData(color: Colors.black, size: 35),
          titleTextStyle:
          TextStyle(fontSize: 22, color: Colors.black.withOpacity(0.75))),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        elevation: 5,
        unselectedIconTheme: IconThemeData(
          color: primaryColor,
        ),
        showUnselectedLabels: true,
        unselectedItemColor: primaryColor,
        backgroundColor: primaryColor,
      ),

      textTheme: const TextTheme(
        headlineLarge: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontFamily: 'Poppins'),
        headlineMedium: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.black,
            fontFamily: 'Poppins'),
        headlineSmall: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontFamily: 'Poppins'),
        bodyLarge: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontFamily: 'Poppins'),
        bodyMedium: TextStyle(
            color: Colors.black,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500),
        bodySmall: TextStyle(color: Colors.grey, fontFamily: 'Poppins'),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          textStyle: const TextStyle(
            fontWeight: FontWeight.w500,
            fontFamily: 'Poppins',
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          elevation: 3,
          //side:
          //BorderSide(color: Colors.black, width: 2.5),
        ),
      ),

      checkboxTheme: CheckboxThemeData(
        checkColor: MaterialStateProperty.all(primaryColor),
        fillColor: MaterialStateProperty.all(primaryColor),
        shape: RoundedRectangleBorder(
          // Making around shape
            borderRadius: BorderRadius.circular(2)),
      ),

      inputDecorationTheme: InputDecorationTheme(
        suffixIconColor: Colors.grey,
        // hintStyle: TextStyles.greyBodyText?.copyWith(
        //     fontWeight: FontWeight.normal
        // ),
        contentPadding:
        const EdgeInsets.symmetric(vertical: 18, horizontal: 30),
        filled: true,
        fillColor: Colors.white,
        prefixIconColor: primaryColor,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide.none),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide.none),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide.none),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide.none),
      ),
    );
  }
}

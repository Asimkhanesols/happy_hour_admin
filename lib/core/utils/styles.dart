import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class TextStyles {
  // static TextStyle? get h1Italic => Theme.of(Get.context!).textTheme.headline6?.copyWith(fontSize: 30,color: Colors.black.withOpacity(0.75),fontWeight: FontWeight.bold,);
  static TextStyle? get h1Bold => Get.textTheme.headline1?.copyWith(
        fontSize: 25,
        color: Colors.black.withOpacity(0.75),
        fontWeight: FontWeight.bold,
         fontFamily: 'Montserrat Bold'
      );
  static TextStyle? get h1 => h1Bold?.copyWith(fontSize: 24);
  static TextStyle? get h2 => Get.textTheme.headline2?.copyWith(
      fontSize: 22,
      color: Colors.black.withOpacity(0.75),
      fontWeight: FontWeight.bold);
  static TextStyle? get h3 => Get.textTheme.headline3
      ?.copyWith(fontSize: 20, color: Colors.black.withOpacity(0.75));
  static TextStyle? get bodyText => Get.textTheme.bodyMedium
      ?.copyWith(fontSize: 16 , color: Colors.black, fontWeight: FontWeight.w400);
  static TextStyle? get tableText => Get.textTheme.bodyMedium
      ?.copyWith(fontSize: 12 , color: Colors.black, fontWeight: FontWeight.bold);
  static TextStyle? get bottomBlackText => bodyText?.copyWith(
        fontSize: 14,
      );
  static TextStyle? get smallBlackText => bottomBlackText?.copyWith(
        fontSize: 12,
    color: Colors.black.withOpacity(0.5)
      );
  static TextStyle? get ultraSmallBlackText => smallBlackText?.copyWith(
        fontSize: 9,
      );

  static TextStyle? get bottomPrimaryColorText => bottomBlackText?.copyWith(
        color: primaryColor,
      );
  static TextStyle? get bottomSmallPrimaryColorText =>
      bottomPrimaryColorText?.copyWith(fontSize: 9);

  static TextStyle? get greyBodyText =>
      bodyText?.copyWith(fontSize: 16, color: Colors.grey.shade500);
  static TextStyle? get greySmallBodyText => greyBodyText?.copyWith(
      fontSize: 12, color: Colors.grey.shade500, fontWeight: FontWeight.normal);
  static TextStyle? get greyUltraSmallBodyText =>
      greySmallBodyText?.copyWith(fontSize: 14);
  static TextStyle? get greyMostSmallBodyText =>
      greyUltraSmallBodyText?.copyWith(
        fontSize: 10,
      );

  static TextStyle? get textFieldHintText =>
      TextStyle(fontSize: 14, color: Colors.grey.shade500);
  static TextStyle? get textFieldSmallHint =>
      textFieldHintText?.copyWith(fontSize: 15, color: Colors.grey);
  static TextStyle? get boldBodyText => bodyText?.copyWith(
      fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600);

  static TextStyle? get primaryColorText =>
      h3?.copyWith(color: primaryColor, fontWeight: FontWeight.bold);
  static TextStyle? get primarySmallText =>
      bodyText?.copyWith(color: primaryColor, fontSize: 14);
  static TextStyle? get buttonText =>
      bodyText?.copyWith(color: Colors.white, fontWeight: FontWeight.bold);
  static TextStyle? get buttonSmallText => buttonText?.copyWith(fontSize: 13);
}

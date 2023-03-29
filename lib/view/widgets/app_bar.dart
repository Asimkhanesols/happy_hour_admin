 import 'package:add_happy_hour_admin/core/utils/colors.dart';
import 'package:add_happy_hour_admin/view/widgets/size_box.dart';
import 'package:flutter/material.dart';

import '../../core/utils/assets_constants.dart';
import '../../core/utils/styles.dart';
   AppBar appBarWidget(){

     return AppBar(
       backgroundColor: whiteColor,
       actions: [
         Padding(
           padding: const EdgeInsets.only(right: 40),
           child: Row(
             children: [
               Container(
                 height: 50,
                 width: 70,

                 decoration: const BoxDecoration(
                   shape: BoxShape.circle,
                 ),
                 child: Image.asset(imgProfile),
               ),
               5.pw,
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   10.ph,
                   Text('Hello, George', style: TextStyles.smallBlackText),
                   5.ph,
                   Text('admin', style: TextStyles.greyMostSmallBodyText)
                 ],
               ),
             ],
           ),
         )
       ],


     );
   }

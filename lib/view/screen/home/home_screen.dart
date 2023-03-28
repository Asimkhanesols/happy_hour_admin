import 'package:add_happy_hour_admin/view/screen/dashboard/dashboard_controller.dart';
import 'package:add_happy_hour_admin/view/widgets/chart_widget.dart';
import 'package:add_happy_hour_admin/view/widgets/size_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/utils/assets_constants.dart';
import '../../../core/utils/colors.dart';
import '../../../core/utils/styles.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(DashBoardController());
    return Scaffold(
      body: Column(
        children: [

          Container(

            height: context.height,
            padding: const EdgeInsets.all(8),
            color: bgColor,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text('Welcome Lorem Ipsum',style: TextStyles.smallBlackText,),
                          5.ph,
                          Text('Hi, your analytics are all set',style: TextStyles.greyMostSmallBodyText, )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 60,
                            width: 80,

                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(imgProfile),
                          ),
                          5.pw,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Hello, George', style: TextStyles.smallBlackText),
                              5.ph,
                              Text('admin', style: TextStyles.greyMostSmallBodyText)
                            ],
                          ),
                        ],
                      )
                    ],
                  ) ,
                  40.ph,
                  Wrap(
                    spacing: 20,
                    children: List.generate(controller.totalsList.length,
                            (index) => dashBoardContainer(

                            title: controller.totalsList[index] ,
                            number: "2845"



                        )),
                  ),

                  40.ph,
                  Text("See your Statistics",textAlign: TextAlign.start , style: TextStyles.boldBodyText,),
                  40.ph,
                  Wrap(
                    spacing: 40,
                    children: [
                      Container(


                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(4),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 2,
                              offset: Offset(0, 1),
                            ),
                          ],
                        ),
                        child: HomeChartW(),
                      ),
                      Container(


                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(4),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 2,
                              offset: Offset(0, 1),
                            ),
                          ],
                        ),
                        child: HomeChartW(),
                      ),
                    ],
                  ),









                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
Widget dashBoardContainer({String? title , String? number}){
  return Container(
    height:  Get.height * 0.13,
    width: Get.width * 0.13,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(2),
      color: whiteColor,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 2,
          offset: const Offset(0, 1),
        ),
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.all(6.0),
      child: Column(
        children: [
          10.ph,
          Text(title! ,textAlign: TextAlign.center, style: TextStyles.boldBodyText?.copyWith(fontSize: 14),),
          15.ph,
          Text(number! ,style: TextStyles.primaryColorText?.copyWith(fontSize: 15) ),
          15.ph,
          Text("update Today", style: TextStyles.greyMostSmallBodyText)
        ],
      ),
    ),

  );
}
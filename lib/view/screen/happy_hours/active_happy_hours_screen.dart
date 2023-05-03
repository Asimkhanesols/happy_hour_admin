

import 'package:add_happy_hour_admin/core/utils/colors.dart';
import 'package:add_happy_hour_admin/view/screen/dashboard/dashboard_controller.dart';
import 'package:add_happy_hour_admin/view/screen/happy_hours/happy_hour_request.dart';
import 'package:add_happy_hour_admin/view/screen/happy_hours/widget/happy_hour_table.dart';
import 'package:add_happy_hour_admin/view/widgets/buttons.dart';
import 'package:add_happy_hour_admin/view/widgets/size_box.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/utils/assets_constants.dart';
import '../../../core/utils/styles.dart';

import '../../widgets/top_row.dart';
// we return navigator , navigator used when we are doing nested navigation in same context it just replace the current screen with another screen or widget
class ActiveHappyHourScreen extends StatelessWidget {
  const ActiveHappyHourScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(DashBoardController());
    return Container(
      height: context.height,
      width: context.width,
      color: bgColor,
      child: ClipRect(
        child: Navigator(
          onGenerateRoute: (setting)=> MaterialPageRoute(

              builder: (context) => SingleChildScrollView(
                child: SingleChildScrollView(
                  child:

                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 30,top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [

                        const TopRow(),
                        30.ph,

                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Active Happy Hours',style: TextStyles.boldBodyText,),
                                5.ph,
                                Text('You can see all the active happy hours here.',style: TextStyles.greyMostSmallBodyText, )
                              ],
                            ),
                            const Spacer(),
                            // drop down menu for active and request happy hour
                            Obx(() => Container(
                              height: 40,

                              width: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                  boxShadow: const [
                                    BoxShadow(color: Colors.black26, blurRadius: 4.0, spreadRadius: 0.3)
                                  ],
                                color: whiteColor
                              ),
                              child: Center(
                                child: DropdownButton(
                                  value: controller.selectedOption.value,
                                  isDense: true,
                                  underline: const SizedBox(),
                                  style: TextStyles.bottomBlackText,
                                  icon: const Icon(CupertinoIcons.arrowtriangle_down_circle , color: primaryColor,),
                                  items: ['Active happy hour', 'Happy request hour'].map((item) {
                                    return DropdownMenuItem(
                                      value: item,
                                      child: Text(item),
                                    );
                                  }).toList(),
                                  onChanged: (newValue) {
                                    controller.selectedOption.value = newValue!;
                                    if (newValue == 'Happy request hour') {
                                     Navigator.push(context, MaterialPageRoute(builder: (context){
                                       return  HappyHourRequestScreen();
                                     }));

                                    }
                                  },),
                              ),
                            ),),
                            30.pw,
                            Container(
                                height: 40,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: whiteColor,
                                    shape: BoxShape.circle
                                ),

                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Image.asset(imgPdf , ),
                                )),
                            20.pw,
                            Container(
                                height: 40,
                                width: 50,
                                decoration: const BoxDecoration(
                                    color: whiteColor,
                                    shape: BoxShape.circle
                                ),

                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Image.asset(imgExcel , ),
                                )),
                            50.pw,
                          ],
                        ),
                        30.ph,
                        // table for data of ACTIVE HAPPY HOUR
                        ActiveHappyHourTableW(),
                        20.ph,
                        Row(
                          children: [
                            Column(
                              children: [
                                5.ph,
                                Text('Showing 1 of 3',style: TextStyles.smallBlackText, )
                              ],
                            ),
                            Spacer(),
                            Text('Previous',style: TextStyles.smallBlackText, ),
                            ElevatedButtonW(
                              buttonText: "1", height: 40,width: 40,buttonRadius: 4,),

                            20.pw,
                            Text('Next',style: TextStyles.smallBlackText, ),
                            20.pw,
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

              )),
        ),

      ),
    );
  }
}
















































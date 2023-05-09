
import 'package:add_happy_hour_admin/view/screen/happy_hours/widget/request_happy_hours_table.dart';
import 'package:flutter/cupertino.dart';

import '../../../core/utils/export.dart';
import 'active_happy_hours_screen.dart';

class HappyHourRequestScreen extends StatelessWidget {
   HappyHourRequestScreen({Key? key}) : super(key: key);

  final happyHourController = Get.find<HappyHourController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height,
      width: context.width,
      color: bgColor,
      child: ClipRect(
        child: Navigator(
          onGenerateRoute: (settings) => MaterialPageRoute(
            builder: (context) => SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 30, top: 20),
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
                            Text(
                              'Happy Hours Request',
                              style: TextStyles.boldBodyText,
                            ),
                            5.ph,
                            Text(
                              'You can see all the active happy hours requests here.',
                              style: TextStyles.greyMostSmallBodyText,
                            )
                          ],
                        ),
                        const Spacer(),
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
                              value: happyHourController.selectActive.value,
                              isDense: true,
                              underline: const SizedBox(),
                              style: TextStyles.bottomBlackText,
                              icon: const Icon(CupertinoIcons.arrowtriangle_down_circle , color: primaryColor,),
                              items: ['Active happy hour', 'Happy hour request'].map((item) {
                                return DropdownMenuItem(
                                  value: item,
                                  child: Text(item),
                                );
                              }).toList(),
                              onChanged: (newValue) {
                                happyHourController.selectActive.value = newValue!;
                                if (newValue == 'Active happy hour') {
                                  Navigator.push(context, MaterialPageRoute(builder: (context){
                                    return  ActiveHappyHourScreen();
                                  }));

                                }
                              },),
                          ),
                        ),),
                        20.pw,
                        GetBuilder<HappyHourController>(
                            builder: (controller) {
                              return SizedBox(
                                width: 240,
                                child: TextFormField(
                                  controller: controller.searchActiveHappyHourController,
                                  decoration: InputDecoration(
                                      hintText: "Search here" , hintStyle: TextStyles.textFieldSmallHint,
                                      suffixIcon: const Icon(Icons.search),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(2),
                                          borderSide: BorderSide.none
                                      )
                                  ),
                                  onChanged: (value){
                                    controller.searchActiveHourQuery(value);
                                    controller.update();
                                  },


                                ),
                              );
                            }
                        ),

                        20.pw,
                      ],
                    ),
                    30.ph,
                     RequestHappyHourTableW(),
                     20.ph,

                    Row(
                      children: [
                        Column(
                          children: [
                            5.ph,
                            Text(
                              'Showing 1 to 10 of 30 entries',
                              style: TextStyles.smallBlackText,
                            )
                          ],
                        ),
                        const Spacer(),
                        Text(
                          'Previous',
                          style: TextStyles.smallBlackText,
                        ),
                        const ElevatedButtonW(
                          buttonText: "1",
                          height: 40,
                          width: 40,
                          buttonRadius: 4,
                        ),
                        20.pw,
                        Text(
                          'Next',
                          style: TextStyles.smallBlackText,
                        ),
                        20.pw,
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

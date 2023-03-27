import 'package:add_happy_hour_admin/view/widgets/buttons.dart';
import 'package:add_happy_hour_admin/view/widgets/size_box.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/assets_constants.dart';
import '../../../core/utils/styles.dart';
import 'package:get/get.dart';


class AddNewPackage extends StatelessWidget {
  const AddNewPackage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20,right: 30,left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),

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
            ),
            20.ph,
            Text('Add New Package' , style: TextStyles.boldBodyText,),
            10.ph,
            Text('Please fill all the detail of new package. ' , style: TextStyles.greySmallBodyText,),
            30.ph,
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius:2,
                      blurRadius: 3,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                height: 50,
                width: Get.width * 0.2,

                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'title',hintStyle: TextStyles.textFieldSmallHint
                  ),
                )),
            20.ph,
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius:2,
                      blurRadius: 3,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                height: 50,
                width: Get.width * 0.2,

                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Price',hintStyle: TextStyles.textFieldSmallHint
                  ),
                )),
            20.ph,
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius:2,
                      blurRadius: 3,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                height: 50,
                width: Get.width * 0.2,

                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Description',hintStyle: TextStyles.textFieldSmallHint
                  ),
                )),
            20.ph,
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius:2,
                      blurRadius: 3,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                height: 50,
                width: Get.width * 0.2,

                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Duration',hintStyle: TextStyles.textFieldSmallHint
                  ),
                )),
            30.ph,
            ElevatedButtonW(buttonText: 'Add', width: 250,height: 50,)

          ],
        ),
      ),
    );
  }
}

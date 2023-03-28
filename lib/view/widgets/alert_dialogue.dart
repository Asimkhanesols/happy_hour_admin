import 'package:add_happy_hour_admin/core/utils/assets_constants.dart';
import 'package:add_happy_hour_admin/view/widgets/buttons.dart';
import 'package:add_happy_hour_admin/view/widgets/size_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/utils/colors.dart';
import '../../core/utils/styles.dart';

AlertDialog happyHourDetailDialogueW() {
  return AlertDialog(
    scrollable: true,
    alignment: Alignment.center,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15))),
    backgroundColor: whiteColor,
    insetPadding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
    content: Builder(builder: (context) {
      return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: Get.width * 0.3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 1,),
                Text(
                  'Happy Hour Details',
                  style: TextStyles.h1,
                ),
                SizedBox(),
                InkWell(

                    onTap: () {
                      Get.back();
                    },
                    child: Icon(CupertinoIcons.clear)),

              ],
            ),
            40.ph,
            Text(
              'Happy Hour Details',
              style: TextStyles.boldBodyText,
            ),
            10.ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ID',
                      style: TextStyles.smallBlackText,
                    ),
                    15.ph,
                    Text(
                      'Business Name',
                      style: TextStyles.smallBlackText,
                    ),
                    15.ph,
                    Text(
                      'Business Address',
                      style: TextStyles.smallBlackText,
                    ),
                    15.ph,
                    Text(
                      'Phone Number',
                      style: TextStyles.smallBlackText,
                    ),
                    15.ph,
                    Text(
                      'Day',
                      style: TextStyles.smallBlackText,
                    ),
                    15.ph,
                    Text(
                      'Time',
                      style: TextStyles.smallBlackText,
                    ),
                    15.ph,
                    Text(
                      'Food Items',
                      style: TextStyles.smallBlackText,
                    ),
                    15.ph,
                    Text(
                      'Drink Specials',
                      style: TextStyles.smallBlackText,
                    ),
                    15.ph,
                    Text(
                      'Daily Specials',
                      style: TextStyles.smallBlackText,
                    ),
                    15.ph,
                    Text(
                      'Events',
                      style: TextStyles.smallBlackText,
                    ),
                    15.ph,
                    Text(
                      'Amenities',
                      style: TextStyles.smallBlackText,
                    ),
                    15.ph,
                    Text(
                      'Bar Type',
                      style: TextStyles.smallBlackText,
                    ),
                    15.ph,
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '01',
                      style: TextStyles.smallBlackText,
                    ),
                    15.ph,
                    Text(
                      'Lorem Ipsum',
                      style: TextStyles.smallBlackText,
                    ),
                    15.ph,
                    Text(
                      'New York',
                      style: TextStyles.smallBlackText,
                    ),
                    15.ph,
                    Text(
                      '12345678910',
                      style: TextStyles.smallBlackText,
                    ),
                    15.ph,
                    Text(
                      'Sunday, Monday',
                      style: TextStyles.smallBlackText,
                    ),
                    15.ph,
                    Text(
                      '07:00- 08:00',
                      style: TextStyles.smallBlackText,
                    ),
                    15.ph,
                    Text(
                      'Burger,Pizza, fries ,',
                      style: TextStyles.smallBlackText,
                    ),
                    15.ph,
                    Text(
                      'Coke,Pepsi',
                      style: TextStyles.smallBlackText,
                    ),
                    15.ph,
                    Text(
                      'Lorem Ipsum',
                      style: TextStyles.smallBlackText,
                    ),
                    15.ph,
                    Text(
                      'Lorem Ipsum',
                      style: TextStyles.smallBlackText,
                    ),
                    15.ph,
                    Text(
                      'Lorem Ipsum',
                      style: TextStyles.smallBlackText,
                    ),
                    15.ph,
                    Text(
                      'Lorem Ipsum',
                      style: TextStyles.smallBlackText,
                    ),
                    15.ph,
                  ],
                )
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Text('Bussiness card', style: TextStyles.smallBlackText),
                    10.ph,
                    Container(
                        height: 100,
                        width: 100,
                        color: Colors.grey.withOpacity(0.5),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            imgPhoto2,
                          ),
                        ))
                  ],
                ),
                30.pw,
                Column(
                  children: [
                    Text('Bussiness logo', style: TextStyles.smallBlackText),
                    10.ph,
                    Container(
                        height: 100,
                        width: 100,
                        color: Colors.grey.withOpacity(0.5),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            imgPhoto2,
                          ),
                        ))
                  ],
                ),
                30.pw,
                Column(
                  children: [
                    Text('Happy Hour menu', style: TextStyles.smallBlackText),
                    10.ph,
                    Container(
                        height: 100,
                        width: 100,
                        color: Colors.grey.withOpacity(0.5),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            imgPhoto2,
                          ),
                        ))
                  ],
                ),
              ],
            ),
            10.ph,
            Row(
              children: [
                Column(
                  children: [
                    Text('Bussiness card', style: TextStyles.smallBlackText),
                    10.ph,
                    Container(
                        height: 100,
                        width: 100,
                        color: Colors.grey.withOpacity(0.5),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            imgPhoto2,
                          ),
                        ))
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 40,
                    width: 50,
                    decoration: BoxDecoration(
                        color: whiteColor, shape: BoxShape.circle),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset(
                        imgPdf,
                      ),
                    )),
                20.pw,
                Container(
                    height: 40,
                    width: 50,
                    decoration: BoxDecoration(
                        color: whiteColor, shape: BoxShape.circle),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset(
                        imgExcel,
                      ),
                    )),
                20.pw,
              ],
            ),
            30.ph,
            Center(
              child: ElevatedButtonW(
                buttonText: 'Close',
                width: 260,
                height: 50,
                onTap: () {
                  showDialog(context: context,
                      builder: (context){
                    return deleteHappyHourDialogueW();
                      });
                },
              ),
            )
          ]);
    }),
  );
}


AlertDialog deleteHappyHourDialogueW() {
  return AlertDialog(
    scrollable: true,
    alignment: Alignment.center,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15))),
    backgroundColor: whiteColor,
    insetPadding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
    content: Builder(builder: (context) {
      return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: Get.width * 0.15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                Text(
                  'Delete Happy Hour ',
                  style: TextStyles.bodyText,
                ),
                SizedBox(),
                InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(CupertinoIcons.clear)),

              ],
            ),
            40.ph,
            Text(
              'Do you want to delete this happy hour?',
              textAlign: TextAlign.center,
              style: TextStyles.smallBlackText,
            ),
            40.ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                ElevatedButtonW(buttonText: 'Cancel',
                buttonColor: halfGrey,
                  buttonTextColor: blackColor,
                  borderColor: primaryColor,
                  height: 40,
                  width: 120,
                  onTap: (){
                  Get.back();
                  },


                ),
                ElevatedButtonW(buttonText: 'Yes',height: 40,
                  width: 120,
                onTap: (){
                  Get.back();
                  Get.back();
                },

                )





              ],
            ),
            30.ph,
            
          ]);
    }),
  );
}

// request happy hour 
AlertDialog requestHappyHourDialogueW() {
  return AlertDialog(
    scrollable: true,
    alignment: Alignment.center,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15))),
    backgroundColor: whiteColor,
    insetPadding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
    content: Builder(builder: (context) {
      return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: Get.width * 0.3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 1,),
                Text(
                  'Happy Hour Details',
                  style: TextStyles.h1,
                ),
                SizedBox(),
                InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(CupertinoIcons.clear)),

              ],
            ),
            40.ph,
            Text(
              'Happy Hour Details',
              textAlign: TextAlign.center,
              style: TextStyles.boldBodyText,
            ),
            10.ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'ID',
                      style: TextStyles.smallBlackText,
                    ),
                    15.ph,
                    Text(
                      'Business Name',
                      style: TextStyles.smallBlackText,
                    ),
                    15.ph,
                    Text(
                      'Business Address',
                      style: TextStyles.smallBlackText,
                    ),
                    15.ph,
                    Text(
                      'Phone Number',
                      style: TextStyles.smallBlackText,
                    ),
                    15.ph,
                    Text(
                      'Day',
                      style: TextStyles.smallBlackText,
                    ),
                    15.ph,
                    Text(
                      'Time',
                      style: TextStyles.smallBlackText,
                    ),
                    15.ph,
                    Text(
                      'Food Items',
                      style: TextStyles.smallBlackText,
                    ),
                    15.ph,
                    Text(
                      'Drink Specials',
                      style: TextStyles.smallBlackText,
                    ),
                    15.ph,
                    Text(
                      'Daily Specials',
                      style: TextStyles.smallBlackText,
                    ),
                    15.ph,
                    Text(
                      'Events',
                      style: TextStyles.smallBlackText,
                    ),
                    15.ph,
                    Text(
                      'Amenities',
                      style: TextStyles.smallBlackText,
                    ),
                    15.ph,
                    Text(
                      'Bar Type',
                      style: TextStyles.smallBlackText,
                    ),
                    15.ph,
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '01',
                      style: TextStyles.smallBlackText,
                    ),
                    15.ph,
                    Text(
                      'Lorem Ipsum',
                      style: TextStyles.smallBlackText,
                    ),
                    15.ph,
                    Text(
                      'New York',
                      style: TextStyles.smallBlackText,
                    ),
                    15.ph,
                    Text(
                      '12345678910',
                      style: TextStyles.smallBlackText,
                    ),
                    15.ph,
                    Text(
                      'Sunday, Monday',
                      style: TextStyles.smallBlackText,
                    ),
                    15.ph,
                    Text(
                      '07:00- 08:00',
                      style: TextStyles.smallBlackText,
                    ),
                    15.ph,
                    Text(
                      'Burger,Pizza, fries ,',
                      style: TextStyles.smallBlackText,
                    ),
                    15.ph,
                    Text(
                      'Coke,Pepsi',
                      style: TextStyles.smallBlackText,
                    ),
                    15.ph,
                    Text(
                      'Lorem Ipsum',
                      style: TextStyles.smallBlackText,
                    ),
                    15.ph,
                    Text(
                      'Lorem Ipsum',
                      style: TextStyles.smallBlackText,
                    ),
                    15.ph,
                    Text(
                      'Lorem Ipsum',
                      style: TextStyles.smallBlackText,
                    ),
                    15.ph,
                    Text(
                      'Lorem Ipsum',
                      style: TextStyles.smallBlackText,
                    ),
                    15.ph,
                  ],
                )
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Text('Bussiness card', style: TextStyles.smallBlackText),
                    10.ph,
                    Container(
                        height: 100,
                        width: 100,
                        color: Colors.grey.withOpacity(0.5),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            imgPhoto2,
                          ),
                        ))
                  ],
                ),
                30.pw,
                Column(
                  children: [
                    Text('Business logo', style: TextStyles.smallBlackText),
                    10.ph,
                    Container(
                        height: 100,
                        width: 100,
                        color: Colors.grey.withOpacity(0.5),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            imgPhoto2,
                          ),
                        ))
                  ],
                ),
                30.pw,
                Column(
                  children: [
                    Text('Happy Hour menu', style: TextStyles.smallBlackText),
                    10.ph,
                    Container(
                        height: 100,
                        width: 100,
                        color: Colors.grey.withOpacity(0.5),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            imgPhoto2,
                          ),
                        ))
                  ],
                ),
              ],
            ),
            10.ph,
            Row(
              children: [
                Column(
                  children: [
                    Text('Bussiness card', style: TextStyles.smallBlackText),
                    10.ph,
                    Container(
                        height: 100,
                        width: 100,
                        color: Colors.grey.withOpacity(0.5),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            imgPhoto2,
                          ),
                        ))
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 40,
                    width: 50,
                    decoration: BoxDecoration(
                        color: whiteColor, shape: BoxShape.circle),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset(
                        imgPdf,
                      ),
                    )),
                20.pw,
                Container(
                    height: 40,
                    width: 50,
                    decoration: BoxDecoration(
                        color: whiteColor, shape: BoxShape.circle),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset(
                        imgExcel,
                      ),
                    )),
                20.pw,
              ],
            ),
            30.ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                 Expanded(child: ElevatedButtonW
                   (buttonText: 'Reject',
                   buttonTextColor: blackColor,
                   borderColor: primaryColor,
                   buttonColor: whiteColor,)),
                Expanded(child: ElevatedButtonW(
                  buttonText: 'Approve',

                  onTap: () {
                    showDialog(context: context,
                        builder: (context){
                          return approveHappyHourDialogueW();
                        });
                  },
                ))

              ],
            )

          ]);
    }),
  );
}


AlertDialog approveHappyHourDialogueW() {
  return AlertDialog(
    scrollable: true,
    alignment: Alignment.center,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15))),
    backgroundColor: whiteColor,
    insetPadding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
    content: Builder(builder: (context) {
      return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: Get.height * 0.2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 1,),
                Text(
                  'Approve Happy Hour',
                  style: TextStyles.bodyText,
                ),

                InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(CupertinoIcons.clear)),

              ],
            ),
            50.ph,
            Text(
              'Do you want to approve this Happy Hour or reject?',
              style: TextStyles.smallBlackText,
            ),
            50.ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                ElevatedButtonW(buttonText: 'Reject',
                  buttonColor: halfGrey,
                  buttonTextColor: blackColor,
                  borderColor: primaryColor,
                  height: 40,
                  width: 140,
                  onTap: (){
                  Get.back();
                  },


                ),
                ElevatedButtonW(buttonText: 'Approve',height: 40,
                  width: 140,
                  onTap: (){
                    Get.back();
                    Get.back();
                  },



                )





              ],
            ),
            30.ph,

          ]);
    }),
  );
}

AlertDialog flagReportDetailDialogueW() {
  return AlertDialog(
    scrollable: true,
    alignment: Alignment.center,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15))),
    backgroundColor: whiteColor,
    insetPadding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
    content: Builder(builder: (context) {
      return SizedBox(
        width: Get.width * 0.3,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 1,),
                  Text(
                    'Flag Report Details',
                    textAlign: TextAlign.center,
                    style: TextStyles.h1,
                  ),

                  InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(CupertinoIcons.clear)),

                ],
              ),
              40.ph,
              Text(
                'Happy Hour Details',
                textAlign: TextAlign.center,
                style: TextStyles.boldBodyText,
              ),
              10.ph,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: [
                   Text('ID' , style: TextStyles.smallBlackText,),
                  Text('1' , style: TextStyles.smallBlackText,),

                ],
              ),
              10.ph,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Business Name' , style: TextStyles.smallBlackText,),
                  Text('lorem ispuim' , style: TextStyles.smallBlackText,),

                ],
              ),
              10.ph,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Business Adrees' , style: TextStyles.smallBlackText,),
                  Text('New York' , style: TextStyles.smallBlackText,),

                ],
              ),
              10.ph,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Mobile number' , style: TextStyles.smallBlackText,),
                  Text('1234567890' , style: TextStyles.smallBlackText,),

                ],
              ),
              10.ph,
              Text('User' , style: TextStyles.bodyText,),
              10.ph,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('User Name' , style: TextStyles.smallBlackText,),
                  Text('abc' , style: TextStyles.smallBlackText,),

                ],
              ),
              10.ph,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Email' , style: TextStyles.smallBlackText,),
                  Text('abc@gmail.com' , style: TextStyles.smallBlackText,),

                ],
              ),
              10.ph,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Address' , style: TextStyles.smallBlackText,),
                  Text('New york' , style: TextStyles.smallBlackText,),

                ],
              ),
              10.ph,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Mobile Number' , style: TextStyles.smallBlackText,),
                  Text('1234567890' , style: TextStyles.smallBlackText,),

                ],
              ),

              10.ph,
              Text('Report Details', style: TextStyles.bodyText,),

              20.ph,
              Text('Text', style: TextStyles.bodyText,),
              20.ph,
              Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
                  ' Cras ac tellus ut sap ien blandit dapibus eget id est. '
                  'Donec iaculis sapien sed ante eleifend, ac consectetur'
                  ' nibh molestie.',textAlign: TextAlign.start,style: TextStyles.greyBodyText,),



              30.ph,
              Center(
                child: ElevatedButtonW(
                  buttonText: 'Close',
                  width: 260,
                  height: 50,
                  onTap: () {
                    Get.back();
                  },
                ),
              )
            ]),
      );
    }),
  );
}


AlertDialog deletePackageDialogueW() {
  return AlertDialog(
    scrollable: true,
    alignment: Alignment.center,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15))),
    backgroundColor: whiteColor,
    insetPadding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
    content: Builder(builder: (context) {
      return Column(

          children: [
            SizedBox(
              width: Get.height * 0.1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 20,),
                Text(
                  'Delete Package ',
                  style: TextStyles.bodyText,
                ),

                InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(CupertinoIcons.clear)),

              ],
            ),
            50.ph,
            Text(
              'Do you want to delete this package?',
              textAlign: TextAlign.center,
              style: TextStyles.smallBlackText,
            ),
            50.ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                ElevatedButtonW(buttonText: 'Cancel',
                  buttonColor: halfGrey,
                  buttonTextColor: blackColor,
                  borderColor: primaryColor,
                  height: 40,
                  width: 200,
                  onTap: ()=> Get.back(),


                ),
                ElevatedButtonW(buttonText: 'Yes',height: 40,
                  width: 200,
                  onTap: ()=> Get.back(),

                )





              ],
            ),
            30.ph,

          ]);
    }),
  );
}




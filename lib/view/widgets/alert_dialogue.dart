import 'package:add_happy_hour_admin/core/utils/assets_constants.dart';
import 'package:add_happy_hour_admin/view/screen/users/user_controller.dart';
import 'package:add_happy_hour_admin/view/widgets/buttons.dart';
import 'package:add_happy_hour_admin/view/widgets/size_box.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/data/model/happy_hour_model.dart';
import '../../core/data/model/user_model.dart';
import '../../core/utils/colors.dart';
import '../../core/utils/styles.dart';



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
                SizedBox(
                  width: 1,
                ),
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
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'ID',
                      style: TextStyles.smallBlackText,
                    ),
                    Text(
                      '01',
                      style: TextStyles.smallBlackText,
                    ),
                  ],
                ),
                10.ph,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Business Name',
                      style: TextStyles.smallBlackText,
                    ),
                    Text(
                      'Lorem Ipsum',
                      style: TextStyles.smallBlackText,
                    ),
                  ],
                ),
                10.ph,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Business Address',
                      style: TextStyles.smallBlackText,
                    ),
                    Text(
                      'Lorem Ipsum',
                      style: TextStyles.smallBlackText,
                    ),
                  ],
                ),
                10.ph,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Phone Number',
                      style: TextStyles.smallBlackText,
                    ),
                    Text(
                      '123456',
                      style: TextStyles.smallBlackText,
                    ),
                  ],
                ),
                10.ph,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Day',
                      style: TextStyles.smallBlackText,
                    ),
                    Text(
                      'Monday',
                      style: TextStyles.smallBlackText,
                    ),
                  ],
                ),
                10.ph,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Time',
                      style: TextStyles.smallBlackText,
                    ),
                    Text(
                      '4:30 - 5 :30 ',
                      style: TextStyles.smallBlackText,
                    ),
                  ],
                ),
                10.ph,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Food item',
                      style: TextStyles.smallBlackText,
                    ),
                    Text(
                      'Pizza , burger , cake ',
                      style: TextStyles.smallBlackText,
                    ),
                  ],
                ),
                10.ph,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Drink Specials',
                      style: TextStyles.smallBlackText,
                    ),
                    Text(
                      'coke , pepsi , rooh afza  ',
                      style: TextStyles.smallBlackText,
                    ),
                  ],
                ),
                10.ph,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Daily Specials',
                      style: TextStyles.smallBlackText,
                    ),
                    Text(
                      'abc ,xyz',
                      style: TextStyles.smallBlackText,
                    ),
                  ],
                ),
                10.ph,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Events',
                      style: TextStyles.smallBlackText,
                    ),
                    Text(
                      'abc ,xyz',
                      style: TextStyles.smallBlackText,
                    ),
                  ],
                ),
                10.ph,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Amenities',
                      style: TextStyles.smallBlackText,
                    ),
                    Text(
                      'abc ,xyz',
                      style: TextStyles.smallBlackText,
                    ),
                  ],
                ),
                10.ph,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Bar Type',
                      style: TextStyles.smallBlackText,
                    ),
                    Text(
                      'abc ,xyz',
                      style: TextStyles.smallBlackText,
                    ),
                  ],
                ),
              ],
            ),
            30.ph,
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
                Expanded(
                    child: ElevatedButtonW(
                  buttonText: 'Reject',
                  buttonTextColor: blackColor,
                  borderColor: primaryColor,
                  buttonColor: whiteColor,
                )),
                Expanded(
                    child: ElevatedButtonW(
                  buttonText: 'Approve',
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
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
                SizedBox(
                  width: 1,
                ),
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
                ElevatedButtonW(
                  buttonText: 'Reject',
                  buttonColor: halfGrey,
                  buttonTextColor: blackColor,
                  borderColor: primaryColor,
                  height: 40,
                  width: 140,
                  onTap: () {
                    Get.back();
                  },
                ),
                ElevatedButtonW(
                  buttonText: 'Approve',
                  height: 40,
                  width: 140,
                  onTap: () {
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

AlertDialog flagReportDetailDialogueW(String? hourId, String? uid) {
  return AlertDialog(
    scrollable: true,
    alignment: Alignment.center,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15))),
    backgroundColor: whiteColor,
    insetPadding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
    content: Builder(builder: (context) {
      return SizedBox(

        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 1,
                  ),
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
              StreamBuilder<DocumentSnapshot>(
                  stream: FirebaseFirestore.instance
                      .collection('happyhours')
                      .doc(hourId)
                      .snapshots(),
                  builder: (context, AsyncSnapshot<DocumentSnapshot> snapShot) {
                    if (snapShot.hasError) {
                      return Text('Error: ${snapShot.error}');
                    }
                    if (snapShot.connectionState == ConnectionState.waiting) {
                      return const CircularProgressIndicator();
                    }
                    final happyHour = HappyHourModel.fromMap(snapShot.data!);
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'ID',
                              style: TextStyles.smallBlackText,
                            ),
                            Text(
                               hourId ?? '',
                              style: TextStyles.smallBlackText,
                            ),
                          ],
                        ),
                        10.ph,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Business Name',
                              style: TextStyles.smallBlackText,
                            ),
                            Text(
                              happyHour.businessName ?? '',
                              style: TextStyles.smallBlackText,
                            ),
                          ],
                        ),
                        10.ph,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Business Address  ',
                              style: TextStyles.smallBlackText,
                            ),
                            Text(
                              happyHour.businessAddress ?? '',
                              style: TextStyles.smallBlackText,
                            ),
                          ],
                        ),
                        10.ph,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Phone Number',
                              style: TextStyles.smallBlackText,
                            ),
                            Text(
                              happyHour.phoneNumber ?? '',
                              style: TextStyles.smallBlackText,
                            ),
                          ],
                        ),
                          10.ph,

                       ],
                    );
                  }),
              Text(
                'User',
                style: TextStyles.bodyText,
              ),
              10.ph,
            StreamBuilder<DocumentSnapshot>(
                stream: FirebaseFirestore.instance
                    .collection('users')
                    .doc(uid)
                    .snapshots(),
              builder: (context, AsyncSnapshot<DocumentSnapshot>snapshot) {
                if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                }
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                }
                final user = UserModel.fromSnapshot(snapshot.data!);
                return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'User Name',
                          style: TextStyles.smallBlackText,
                        ),
                        Text(
                          user.userName ?? '',
                          style: TextStyles.smallBlackText,
                        ),
                      ],
                    ),
                    10.ph,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Email',
                          style: TextStyles.smallBlackText,
                        ),
                        Text(
                          user.email,
                          style: TextStyles.smallBlackText,
                        ),
                      ],
                    ),


                    10.ph,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Mobile Number',
                          style: TextStyles.smallBlackText,
                        ),
                        Text(
                          user.mobileNumber ?? '',
                          style: TextStyles.smallBlackText,
                        ),
                      ],
                    ),
                    10.ph,
                    Text(
                      'Report Details',
                      style: TextStyles.bodyText,
                    ),
                    20.ph,
                    Text(
                      'Text',
                      style: TextStyles.bodyText,
                    ),
                    20.ph,

                  ],
                );
              }
            ),



              30.ph,
              StreamBuilder<DocumentSnapshot>(
                stream: FirebaseFirestore.instance.collection('reportedHours').doc(hourId).snapshots(),
                builder: (context, AsyncSnapshot<DocumentSnapshot>snapshot) {

                  if (!snapshot.hasData || !snapshot.data!.exists) {
                    // Return an empty widget if the document doesn't exist
                    return SizedBox.shrink();
                  }
                  final text = ReportHourModel.fromDocument(snapshot.data!);
                  print("my text is $text");

                  return Text(
                    text.reportText  ?? '',
                    textAlign: TextAlign.start,
                    style: TextStyles.greyBodyText,
                  );
                }
              ),
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
      return Column(children: [
        SizedBox(
          width: Get.height * 0.1,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 20,
            ),
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
            ElevatedButtonW(
              buttonText: 'Cancel',
              buttonColor: halfGrey,
              buttonTextColor: blackColor,
              borderColor: primaryColor,
              height: 40,
              width: 200,
              onTap: () => Get.back(),
            ),
            ElevatedButtonW(
              buttonText: 'Yes',
              height: 40,
              width: 200,
              onTap: () => Get.back(),
            )
          ],
        ),
        30.ph,
      ]);
    }),
  );
}


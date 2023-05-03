import 'package:add_happy_hour_admin/view/widgets/size_box.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/data/model/happy_hour_model.dart';
import '../../../../core/utils/assets_constants.dart';
import '../../../../core/utils/colors.dart';
import 'package:get/get.dart';

import '../../../../core/utils/styles.dart';
 import '../../../widgets/buttons.dart';


AlertDialog activeHappyHourDetailDialogueW(String? id, CollectionReference<Object?> happyHourRef) {
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
              style: TextStyles.boldBodyText,
            ),
            10.ph,

            StreamBuilder<DocumentSnapshot>(
                stream: FirebaseFirestore.instance
                    .collection('happyhours')
                    .doc(id)
                    .snapshots(),
                builder: (context, AsyncSnapshot<DocumentSnapshot> snapShot) {
                  if (snapShot.hasError) {
                    return Text('Error: ${snapShot.error}');
                  }
                  if (snapShot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  }
                  final happyHour = HappyHourModel.fromMap(snapShot.data!);
                  final day = happyHour.day;
                  final hDay = day != null && day.isNotEmpty ? day[0]['Hday'] : '';

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
                            id ?? '',
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Day',
                            style: TextStyles.smallBlackText,
                          ),
                          Text(


                          hDay ?? [],
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
                            happyHour.day!.isEmpty
                                ? ''
                                : "${happyHour.day?[0]['HfromTime']}  -"
                                "${happyHour.day?[0]['HtoTime']}",
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
                            happyHour.foodItem!
                                .map((item) => item['foodname'])
                                .join(','),
                            style: TextStyles.smallBlackText,
                          ),
                        ],
                      ),
                      10.ph,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Drink Specials   ',
                            style: TextStyles.smallBlackText,
                          ),
                          Text(
                            happyHour.drinkSpecial!
                                .map((item) => item['drinkname'])
                                .join(', '),
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
                            happyHour.dailySpecial!
                                .map((item) => item['day'])
                                .join(', '),
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
                            happyHour.event!
                                .map((item) => item['name'])
                                .join(', '),
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
                            happyHour.amenities!.join(', '),
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
                            happyHour.barType!.join(', '),
                            style: TextStyles.smallBlackText,
                          ),
                        ],
                      ),
                    ],
                  );
                }),

            // SizedBox(
            //   height: Get.height,
            //   width: Get.width * 0.45,
            //   child: FirestoreListView(
            //       query: FirebaseFirestore.instance
            //           .collection('happyhours'),
            //
            //       shrinkWrap: true,
            //       scrollDirection: Axis.vertical,
            //       itemBuilder: (BuildContext context,
            //           DocumentSnapshot<Map<String, dynamic>> snapshot) {
            //         final happyHour = HappyHour.fromMap(snapshot);
            //         return Column(
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //             Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //               children: [
            //                 Text(
            //                   'ID',
            //                   style: TextStyles.smallBlackText,
            //                 ),
            //                 Text(
            //                   happyHour.id ?? '',
            //                   style: TextStyles.smallBlackText,
            //                 ),
            //               ],
            //             ),
            //             10.ph,
            //             Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //               children: [
            //                 Text(
            //                   'Business Name',
            //                   style: TextStyles.smallBlackText,
            //                 ),
            //                 Text(
            //                   happyHour.businessName ?? '',
            //                   style: TextStyles.smallBlackText,
            //                 ),
            //               ],
            //             ),
            //             10.ph,
            //             Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //               children: [
            //                 Text(
            //                   'Business Address',
            //                   style: TextStyles.smallBlackText,
            //                 ),
            //                 Text(
            //                   happyHour.businessAddress ?? '',
            //                   style: TextStyles.smallBlackText,
            //                 ),
            //               ],
            //             ),
            //             10.ph,
            //             Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //               children: [
            //                 Text(
            //                   'Phone Number',
            //                   style: TextStyles.smallBlackText,
            //                 ),
            //                 Text(
            //                   happyHour.phoneNumber ?? '',
            //                   style: TextStyles.smallBlackText,
            //                 ),
            //               ],
            //             ),
            //             10.ph,
            //             Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //               children: [
            //                 Text(
            //                   'Day',
            //                   style: TextStyles.smallBlackText,
            //                 ),
            //                 Text(
            //                   happyHour.day![0]['Hday'],
            //                   style: TextStyles.smallBlackText,
            //                 ),
            //               ],
            //             ),
            //             10.ph,
            //             Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //               children: [
            //                 Text(
            //                   'Time',
            //                   style: TextStyles.smallBlackText,
            //                 ),
            //                 Text(
            //                   happyHour.day!.isEmpty
            //                       ? ''
            //                       : "${happyHour.day?[0]['HfromTime']}  -"
            //                           "${happyHour.day?[0]['HtoTime']}",
            //                   style: TextStyles.smallBlackText,
            //                 ),
            //               ],
            //             ),
            //             10.ph,
            //             Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //               children: [
            //                 Text(
            //                   'Food item',
            //                   style: TextStyles.smallBlackText,
            //                 ),
            //                 Text(
            //                   happyHour.foodItem!
            //                       .map((item) => item['foodname'])
            //                       .join(','),
            //                   style: TextStyles.smallBlackText,
            //                 ),
            //               ],
            //             ),
            //             10.ph,
            //             Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //               children: [
            //                 Text(
            //                   'Drink Specials',
            //                   style: TextStyles.smallBlackText,
            //                 ),
            //                 Text(
            //                   happyHour.dailySpecial!
            //                       .map((item) => item['day'])
            //                       .join(', '),
            //                   style: TextStyles.smallBlackText,
            //                 ),
            //               ],
            //             ),
            //             10.ph,
            //             Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //               children: [
            //                 Text(
            //                   'Daily Specials',
            //                   style: TextStyles.smallBlackText,
            //                 ),
            //                 Text(
            //                   'abc ,xyz',
            //                   style: TextStyles.smallBlackText,
            //                 ),
            //               ],
            //             ),
            //             10.ph,
            //             Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //               children: [
            //                 Text(
            //                   'Events',
            //                   style: TextStyles.smallBlackText,
            //                 ),
            //                 Text(
            //                   happyHour.event!
            //                       .map((item) => item['name'])
            //                       .join(', '),
            //                   style: TextStyles.smallBlackText,
            //                 ),
            //               ],
            //             ),
            //             10.ph,
            //             Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //               children: [
            //                 Text(
            //                   'Amenities',
            //                   style: TextStyles.smallBlackText,
            //                 ),
            //                 Text(
            //                   happyHour.amenities!.join(', '),
            //                   style: TextStyles.smallBlackText,
            //                 ),
            //               ],
            //             ),
            //             10.ph,
            //             Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //               children: [
            //                 Text(
            //                   'Bar Type',
            //                   style: TextStyles.smallBlackText,
            //                 ),
            //                 Text(
            //                   happyHour.barType!.join(', '),
            //                   style: TextStyles.smallBlackText,
            //                 ),
            //               ],
            //             ),
            //           ],
            //         );
            //       }),
            // ),
            30.ph,
            StreamBuilder<DocumentSnapshot>(
                stream: FirebaseFirestore.instance
                    .collection('happyhours')
                    .doc(id)
                    .snapshots(),
                builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
                  if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  }
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  }
                  final happyHour = HappyHourModel.fromMap(snapshot.data!);
                   return Wrap(
                    children: [
                      Column(
                        children: [
                          Text('Business card',
                              style: TextStyles.smallBlackText),
                          10.ph,
                          Container(
                            height: 100,
                            width: 100,
                            color: Colors.grey.withOpacity(0.5),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network(
                                happyHour.businessCard ?? imgPhoto,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                      ),
                      30.pw,
                      Column(
                        children: [
                          Text('Bussiness logo',
                              style: TextStyles.smallBlackText),
                          10.ph,
                          Container(
                            height: 100,
                            width: 100,
                            color: Colors.grey.withOpacity(0.5),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network(
                                happyHour.businessLogo ?? imgPhoto,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                      ),
                      30.pw,
                      Column(
                        children: [
                          Text('Happy Hour menu',
                              style: TextStyles.smallBlackText),
                          10.ph,
                          Container(
                            height: 100,
                            width: 100,
                            color: Colors.grey.withOpacity(0.5),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network(
                                happyHour.happyHourMenu ?? imgPhoto,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                      ),
                      20.pw,
                      Column(
                        children: [
                          Text('Business card',
                              style: TextStyles.smallBlackText),
                          10.ph,
                          Container(
                            height: 100,
                            width: 100,
                            color: Colors.grey.withOpacity(0.5),
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.network(
                                  happyHour.businessCard ?? imgPhoto,
                                  fit: BoxFit.fill,
                                )),
                          ),
                        ],
                      ),
                    ],
                  );
                }),

            10.ph,

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 40,
                    width: 50,
                    decoration: const BoxDecoration(
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
                    decoration: const BoxDecoration(
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
                  showDialog(
                      context: context,
                      builder: (context) {
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
                const SizedBox(),
                InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: const Icon(CupertinoIcons.clear)),
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
                ElevatedButtonW(
                  buttonText: 'Cancel',
                  buttonColor: halfGrey,
                  buttonTextColor: blackColor,
                  borderColor: primaryColor,
                  height: 40,
                  width: 120,
                  onTap: () {
                    Get.back();
                  },
                ),
                ElevatedButtonW(
                  buttonText: 'Yes',
                  height: 40,
                  width: 120,
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

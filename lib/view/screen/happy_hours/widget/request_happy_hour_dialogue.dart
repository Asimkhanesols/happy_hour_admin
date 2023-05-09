

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';

import '../../../../core/utils/export.dart';

AlertDialog requestHappyHourDetailDialogueW(String? id, CollectionReference<Object?> happyHourRef,  ) {
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
                const SizedBox(
                  width: 1,
                ),
                Text(
                  'Request Happy Hour Details',
                  style: TextStyles.h1,
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
              'Request Happy Hour Details',
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
                  print('------>>>>>>> happy hour days is $hDay');



                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'ID',
                            style: TextStyles.bodyText?.copyWith(fontSize: 12 ),
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
                            style: TextStyles.bodyText?.copyWith(fontSize: 12),
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
                            style: TextStyles.bodyText?.copyWith(fontSize: 12),                          ),
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
                            style: TextStyles.bodyText?.copyWith(fontSize: 12),                          ),
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
                            style: TextStyles.bodyText?.copyWith(fontSize: 12),                          ),
                          Text(
                            happyHour.day !
                                .map((item) => item['Hday'])
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
                            'Time',
                            style: TextStyles.bodyText?.copyWith(fontSize: 12),                          ),
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
                            style: TextStyles.bodyText?.copyWith(fontSize: 12),                          ),
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
                            style: TextStyles.bodyText?.copyWith(fontSize: 12),                          ),
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
                            style: TextStyles.bodyText?.copyWith(fontSize: 12),                          ),
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
                            style: TextStyles.bodyText?.copyWith(fontSize: 12),                          ),
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
                            style: TextStyles.bodyText?.copyWith(fontSize: 12),                          ),
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
                            style: TextStyles.bodyText?.copyWith(fontSize: 12),                          ),
                          Text(
                            happyHour.barType!.join(', '),
                            style: TextStyles.smallBlackText,
                          ),
                        ],
                      ),
                    ],
                  );
                }),

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


                      SizedBox(
                        child: Column(
                          children: [
                            Text('Business card',
                                style: TextStyles.smallBlackText),
                            10.ph,
                            Container(
                              height: 100,
                              width: 100,
                              color: Colors.grey.withOpacity(0.5),
                              child: CachedNetworkImage(
                                imageUrl: happyHour.businessCard ?? '',
                                fit: BoxFit.fill,
                                placeholder: (context, url) => CircularProgressIndicator(),
                                errorWidget: (context, url, error) => Image.asset(imgPhoto),
                              ),
                            ),
                          ],
                        ),
                      ),
                      30.pw,
                      SizedBox(
                        child: Column(
                          children: [
                            Text('Business Image',
                                style: TextStyles.smallBlackText),
                            10.ph,
                            Container(
                              height: 100,
                              width: 100,
                              color: Colors.grey.withOpacity(0.5),
                              child: CachedNetworkImage(
                                imageUrl: happyHour.businessImage ?? '',
                                fit: BoxFit.fill,
                                placeholder: (context, url) => CircularProgressIndicator(),
                                errorWidget: (context, url, error) => Image.asset(imgPhoto),
                              ),
                            ),
                          ],
                        ),
                      ),

                      20.pw,
                      SizedBox(
                        child: Column(
                          children: [
                            Text('Business Logo',
                                style: TextStyles.smallBlackText),
                            10.ph,
                            Container(
                              height: 100,
                              width: 100,
                              color: Colors.grey.withOpacity(0.5),
                              child: CachedNetworkImage(
                                imageUrl: happyHour.businessLogo ?? '',
                                fit: BoxFit.fill,
                                placeholder: (context, url) => CircularProgressIndicator(),
                                errorWidget: (context, url, error) => Image.asset(imgPhoto),
                              ),
                            ),
                          ],
                        ),
                      ),
                      30.pw,
                      SizedBox(
                        child: Column(
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
                                child: CachedNetworkImage(
                                  imageUrl: happyHour.happyHourMenu ?? '',
                                  fit: BoxFit.fill,
                                  placeholder: (context, url) => CircularProgressIndicator(),
                                  errorWidget: (context, url, error) => Image.asset(imgPhoto),
                                ),
                              ),
                            ),

                          ],
                        ),
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

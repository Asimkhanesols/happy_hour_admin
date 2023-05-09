
import 'package:flutter/cupertino.dart';

import '../../../../core/utils/export.dart';

AlertDialog suspendUserDialogueW(String userId, CollectionReference<Object?> usersRef) {
  var controller = Get.put(UserController());
  // final CollectionReference usersRef =
  // FirebaseFirestore.instance.collection('users');
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
              'Suspend User ',
              style: TextStyles.h1,
            ),
            InkWell(
                onTap: () {
                  Get.back();
                },
                child: const Icon(CupertinoIcons.clear)),
          ],
        ),
        50.ph,
        Text(
          'Do you want to suspend this User?',
          textAlign: TextAlign.center,
          style: TextStyles.bodyText,
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
              onTap: () {
                controller.suspendUser(userId);
                Navigator.pop(context);
              },
            )
          ],
        ),
        30.ph,
      ]);
    }),
  );
}

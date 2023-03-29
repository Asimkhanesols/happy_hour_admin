import 'package:add_happy_hour_admin/core/utils/colors.dart';
import 'package:add_happy_hour_admin/view/widgets/buttons.dart';
import 'package:add_happy_hour_admin/view/widgets/size_box.dart';
import 'package:add_happy_hour_admin/view/widgets/top_row.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/assets_constants.dart';
import '../../../core/utils/styles.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 15, top: 15, right: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopRow(),
              20.ph,
              Text(
                'Welcome ',
                style: TextStyles.boldBodyText,
              ),
              10.ph,
              Text(
                'You can add the or edit the content of app Welcome screen. ',
                style: TextStyles.greySmallBodyText,
              ),
              30.ph,
              Text(
                'Splash Screen ',
                style: TextStyles.boldBodyText,
              ),
              30.ph,
              Text(
                'Logo',
                style: TextStyles.primarySmallText,
              ),
              10.ph,
              Container(
                height: 120,
                width: 140,
                color: whiteColor,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      Image.asset(
                        imgPhoto,
                        width: 60,
                        height: 50,
                      ),
                      20.ph,
                      InkWell(
                        child: Container(
                          height: 28,
                          width: 28,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 4.0,
                                    spreadRadius: 0.3)
                              ]),
                          child: const Center(
                              child: Icon(
                            Icons.edit,
                            size: 18,
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //divider
              const Divider(
                thickness: 1,
              ),
              10.ph,
              Text(
                'Welcome ',
                style: TextStyles.boldBodyText,
              ),
              10.ph,
              Text(
                'Logo',
                style: TextStyles.primarySmallText,
              ),
              20.ph,
              Container(
                height: 160,
                width: 140,
                color: whiteColor,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      Image.asset(
                        imgPhoto,
                        width: 60,
                        height: 50,
                      ),
                      50.ph,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            child: Container(
                              height: 28,
                              width: 28,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black26,
                                        blurRadius: 4.0,
                                        spreadRadius: 0.3)
                                  ]),
                              child: const Center(
                                  child: Icon(
                                Icons.edit,
                                size: 18,
                              )),
                            ),
                          ),
                          InkWell(
                            child: Container(
                              height: 28,
                              width: 28,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black26,
                                        blurRadius: 4.0,
                                        spreadRadius: 0.3)
                                  ]),
                              child: const Center(
                                  child: Icon(
                                CupertinoIcons.delete,
                                size: 18,
                                color: Colors.red,
                              )),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              20.ph,
              SizedBox(
                width: 300,
                height: 120,
                child: TextFormField(
                  maxLines: 4,
                  decoration: InputDecoration(
                      hintText: "Text",
                      hintStyle: TextStyles.textFieldSmallHint,
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.zero,
                          borderSide: BorderSide.none),
                      enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.zero,
                          borderSide: BorderSide.none),
                      focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.zero,
                          borderSide: BorderSide.none)),
                ),
              ),
              20.ph,
              const ElevatedButtonW(
                buttonText: 'Update',
                width: 180,
                height: 40,
              )
            ],
          ),
        ),
      ),
    );
  }
}

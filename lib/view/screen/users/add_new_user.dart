import 'package:add_happy_hour_admin/core/utils/colors.dart';
import 'package:add_happy_hour_admin/view/widgets/size_box.dart';
import 'package:add_happy_hour_admin/view/widgets/top_row.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

 import '../../../core/utils/styles.dart';


class AddNewUserScreen extends StatelessWidget {
  const AddNewUserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ClipRect(
        child: Navigator(
          onGenerateRoute: (settings) => MaterialPageRoute(
            builder: (context) => SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 15 ,top: 20 , right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   const TopRow(),
                    20.ph,
                    Text('Add New User',style: TextStyles.boldBodyText,),
                    5.ph,
                    Text('Please add the new user details here.',style: TextStyles.greyMostSmallBodyText, ),
                    20.ph,

                    Text('User Details',style: TextStyles.bodyText,),


                    10.ph,
                    Row(
                      children: [
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
                            width: Get.width * 0.17,

                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: 'name',hintStyle: TextStyles.textFieldSmallHint
                              ),
                            )),
                        20.pw,
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
                            width: Get.width * 0.17,

                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: 'Email',hintStyle: TextStyles.textFieldSmallHint
                              ),
                            )),
                        20.pw,
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
                            width: Get.width * 0.17,

                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: 'Mobile No',hintStyle: TextStyles.textFieldSmallHint
                              ),
                            )),
                        20.pw,

                      ],
                    ),

                    20.ph,

                    Text('Permission',style: TextStyles.bodyText,),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const SizedBox(width: 180,),
                        const SizedBox(
                          width: 180,
                          child: CheckboxListTile(
                            activeColor: Colors.white,
                            //checkColor: bottomImageSelectedColor,
                            title: Text(
                              "View",
                              style: TextStyle(color: Colors.black),
                            ),
                            value: false,
                            controlAffinity:
                            ListTileControlAffinity.leading,
                            onChanged: null,
                          ),
                        ),
                        const SizedBox(
                          width: 180,
                          child: CheckboxListTile(
                            activeColor: Colors.white,
                            //checkColor: bottomImageSelectedColor,
                            title: Text(
                              "Create",
                              style: TextStyle(color: Colors.black),
                            ),
                            value: false,
                            controlAffinity:
                            ListTileControlAffinity.leading,
                            onChanged: null,
                          ),
                        ),
                        const SizedBox(
                          width: 180,
                          child: CheckboxListTile(
                            activeColor: Colors.white,
                            //checkColor: bottomImageSelectedColor,
                            title: Text(
                              "Edit",
                              style: TextStyle(color: Colors.black),
                            ),
                            value: false,
                            controlAffinity:
                            ListTileControlAffinity.leading,
                            onChanged: null,
                          ),
                        ),
                        const SizedBox(
                          width: 180,
                          child: CheckboxListTile(
                            activeColor: Colors.white,
                            //checkColor: bottomImageSelectedColor,
                            title: Text(
                              "Delete",
                              style: TextStyle(color: Colors.black),
                            ),
                            value: false,
                            controlAffinity:
                            ListTileControlAffinity.leading,
                            onChanged: null,
                          ),
                        ),
                      ],
                    ),
                    20.ph,


                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,

                      children: [
                          SizedBox(
                          width: 180,
                          child: CheckboxListTile(
                            activeColor: Colors.white,
                            //checkColor: bottomImageSelectedColor,
                            title: Text(
                              "Dashboard",
                              style: TextStyles.smallBlackText,
                            ),
                            value: false,
                            controlAffinity:
                            ListTileControlAffinity.leading,
                            onChanged: null,
                          ),
                        ),

                        SizedBox(
                          width: 180,
                          child: CheckboxListTile(
                            activeColor: primaryColor,
                            //checkColor: bottomImageSelectedColor,
                            title: const Text(""),
                            value: false,
                            // selectedTileColor: bottomImageSelectedColor,
                            controlAffinity:
                            ListTileControlAffinity.leading,
                            onChanged: (newValue) {},
                          ),
                        ),

                        SizedBox(
                          width: 180,
                          child: CheckboxListTile(
                            activeColor: Colors.white,
                            title: const Text(""),
                            value: true,
                            controlAffinity:
                            ListTileControlAffinity.leading,
                            onChanged: (newValue) {},
                          ),
                        ),

                        SizedBox(
                          width: 180,
                          child: CheckboxListTile(
                            activeColor: Colors.white,
                            title: const Text(""),
                            value: true,
                            controlAffinity:
                            ListTileControlAffinity.leading,
                            onChanged: (newValue) {},
                          ),
                        ),

                        SizedBox(
                          width: 180,
                          child: CheckboxListTile(
                            activeColor: Colors.white,
                            title: const Text(""),
                            value: true,
                            controlAffinity:
                            ListTileControlAffinity.leading,
                            onChanged: (newValue) {},
                          ),
                        ),
                      ],
                    ),
                    // end of ist row
                    10.ph,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,

                      children: [
                        SizedBox(
                          width: 180,
                          child: CheckboxListTile(
                            activeColor: Colors.white,
                            //checkColor: bottomImageSelectedColor,
                            title: Text(
                              "Happy Hour",
                              style: TextStyles.smallBlackText,
                            ),
                            value: false,
                            controlAffinity:
                            ListTileControlAffinity.leading,
                            onChanged: null,
                          ),
                        ),

                        SizedBox(
                          width: 180,
                          child: CheckboxListTile(
                            activeColor: primaryColor,
                            //checkColor: bottomImageSelectedColor,
                            title: const Text(""),
                            value: true,
                            // selectedTileColor: bottomImageSelectedColor,
                            controlAffinity:
                            ListTileControlAffinity.leading,
                            onChanged: (newValue) {},
                          ),
                        ),

                        SizedBox(
                          width: 180,
                          child: CheckboxListTile(
                            activeColor: Colors.white,
                            title: const Text(""),
                            value: true,
                            controlAffinity:
                            ListTileControlAffinity.leading,
                            onChanged: (newValue) {},
                          ),
                        ),

                        SizedBox(
                          width: 180,
                          child: CheckboxListTile(
                            activeColor: primaryColor,
                            title: const Text(""),
                            value: true,
                            controlAffinity:
                            ListTileControlAffinity.leading,
                            onChanged: (newValue) {},
                          ),
                        ),

                        SizedBox(
                          width: 180,
                          child: CheckboxListTile(
                            activeColor: Colors.white,
                            title: const Text(""),
                            value: true,
                            controlAffinity:
                            ListTileControlAffinity.leading,
                            onChanged: (newValue) {},
                          ),
                        ),
                      ],
                    ),
                    10.ph,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,

                      children: [
                         SizedBox(
                          width: 180,
                          child: CheckboxListTile(
                            activeColor: Colors.white,
                            //checkColor: bottomImageSelectedColor,
                            title: Text(
                              "Happy Hour items",
                              style: TextStyles.smallBlackText,
                            ),
                            value: false,
                            controlAffinity:
                            ListTileControlAffinity.leading,
                            onChanged: null,
                          ),
                        ),

                        SizedBox(
                          width:180,
                          child: CheckboxListTile(
                            activeColor: primaryColor,
                            //checkColor: bottomImageSelectedColor,
                            title: const Text(""),
                            value: false,
                            // selectedTileColor: bottomImageSelectedColor,
                            controlAffinity:
                            ListTileControlAffinity.leading,
                            onChanged: (newValue) {},
                          ),
                        ),

                        SizedBox(
                          width: 180,
                          child: CheckboxListTile(
                            activeColor: Colors.white,
                            title: const Text(""),
                            value: true,
                            controlAffinity:
                            ListTileControlAffinity.leading,
                            onChanged: (newValue) {},
                          ),
                        ),

                        SizedBox(
                          width: 180,
                          child: CheckboxListTile(
                            activeColor: Colors.white,
                            title: const Text(""),
                            value: true,
                            controlAffinity:
                            ListTileControlAffinity.leading,
                            onChanged: (newValue) {},
                          ),
                        ),

                        SizedBox(
                          width: 180,
                          child: CheckboxListTile(
                            activeColor: Colors.white,
                            title: const Text(""),
                            value: true,
                            controlAffinity:
                            ListTileControlAffinity.leading,
                            onChanged: (newValue) {},
                          ),
                        ),
                      ],
                    ),
                    // end of ist row
                    10.ph,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,

                      children: [
                        SizedBox(
                          width: 180,
                          child: CheckboxListTile(
                            activeColor: Colors.white,
                            //checkColor: bottomImageSelectedColor,
                            title: Text(
                              "Users",
                              style: TextStyles.smallBlackText,
                            ),
                            value: false,
                            controlAffinity:
                            ListTileControlAffinity.leading,
                            onChanged: null,
                          ),
                        ),

                        SizedBox(
                          width: 180,
                          child: CheckboxListTile(
                            activeColor: primaryColor,
                            //checkColor: bottomImageSelectedColor,
                            title: const Text(""),
                            value: true,
                            // selectedTileColor: bottomImageSelectedColor,
                            controlAffinity:
                            ListTileControlAffinity.leading,
                            onChanged: (newValue) {},
                          ),
                        ),

                        SizedBox(
                          width: 180,
                          child: CheckboxListTile(
                            activeColor: Colors.white,
                            title: const Text(""),
                            value: true,
                            controlAffinity:
                            ListTileControlAffinity.leading,
                            onChanged: (newValue) {},
                          ),
                        ),

                        SizedBox(
                          width: 180,
                          child: CheckboxListTile(
                            activeColor: primaryColor,
                            title: const Text(""),
                            value: true,
                            controlAffinity:
                            ListTileControlAffinity.leading,
                            onChanged: (newValue) {},
                          ),
                        ),

                        SizedBox(
                          width: 180,
                          child: CheckboxListTile(
                            activeColor: Colors.white,
                            title: const Text(""),
                            value: true,
                            controlAffinity:
                            ListTileControlAffinity.leading,
                            onChanged: (newValue) {},
                          ),
                        ),
                      ],
                    ),
                    10.ph,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,

                      children: [
                          SizedBox(
                          width: 180,
                          child: CheckboxListTile(
                            activeColor: Colors.white,
                            //checkColor: bottomImageSelectedColor,
                            title: Text(
                              "Welcome Screen",
                              style: TextStyles.smallBlackText,
                            ),
                            value: false,
                            controlAffinity:
                            ListTileControlAffinity.leading,
                            onChanged: null,
                          ),
                        ),

                        SizedBox(
                          width: 180,
                          child: CheckboxListTile(
                            activeColor: primaryColor,
                            //checkColor: bottomImageSelectedColor,
                            title: const Text(""),
                            value: false,
                            // selectedTileColor: bottomImageSelectedColor,
                            controlAffinity:
                            ListTileControlAffinity.leading,
                            onChanged: (newValue) {},
                          ),
                        ),

                        SizedBox(
                          width: 180,
                          child: CheckboxListTile(
                            activeColor: Colors.white,
                            title: const Text(""),
                            value: true,
                            controlAffinity:
                            ListTileControlAffinity.leading,
                            onChanged: (newValue) {},
                          ),
                        ),

                        SizedBox(
                          width: 180,
                          child: CheckboxListTile(
                            activeColor: Colors.white,
                            title: const Text(""),
                            value: true,
                            controlAffinity:
                            ListTileControlAffinity.leading,
                            onChanged: (newValue) {},
                          ),
                        ),

                        SizedBox(
                          width: 180,
                          child: CheckboxListTile(
                            activeColor: Colors.white,
                            title: const Text(""),
                            value: true,
                            controlAffinity:
                            ListTileControlAffinity.leading,
                            onChanged: (newValue) {},
                          ),
                        ),
                      ],
                    ),
                    // end of ist row
                    10.ph,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,

                      children: [
                        SizedBox(
                          width: 180,
                          child: CheckboxListTile(
                            activeColor: Colors.white,
                            //checkColor: bottomImageSelectedColor,
                            title: Text(
                              "Packages",
                              style: TextStyles.smallBlackText,
                            ),
                            value: false,
                            controlAffinity:
                            ListTileControlAffinity.leading,
                            onChanged: null,
                          ),
                        ),

                        SizedBox(
                          width: 180,
                          child: CheckboxListTile(
                            activeColor: primaryColor,
                            //checkColor: bottomImageSelectedColor,
                            title: const Text(""),
                            value: true,
                            // selectedTileColor: bottomImageSelectedColor,
                            controlAffinity:
                            ListTileControlAffinity.leading,
                            onChanged: (newValue) {},
                          ),
                        ),

                        SizedBox(
                          width: 180,
                          child: CheckboxListTile(
                            activeColor: Colors.white,
                            title: const Text(""),
                            value: true,
                            controlAffinity:
                            ListTileControlAffinity.leading,
                            onChanged: (newValue) {},
                          ),
                        ),

                        SizedBox(
                          width: 180,
                          child: CheckboxListTile(
                            activeColor: primaryColor,
                            title: const Text(""),
                            value: true,
                            controlAffinity:
                            ListTileControlAffinity.leading,
                            onChanged: (newValue) {},
                          ),
                        ),

                        SizedBox(
                          width: 180,
                          child: CheckboxListTile(
                            activeColor: Colors.white,
                            title: const Text(""),
                            value: true,
                            controlAffinity:
                            ListTileControlAffinity.leading,
                            onChanged: (newValue) {},
                          ),
                        ),
                      ],
                    ),
                    10.ph,

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


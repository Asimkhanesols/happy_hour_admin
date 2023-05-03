import 'package:add_happy_hour_admin/core/utils/colors.dart';
import 'package:add_happy_hour_admin/view/screen/users/user_controller.dart';
import 'package:add_happy_hour_admin/view/widgets/buttons.dart';
import 'package:add_happy_hour_admin/view/widgets/size_box.dart';
import 'package:add_happy_hour_admin/view/widgets/top_row.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

 import '../../../core/utils/styles.dart';


class AddNewUserScreen extends StatelessWidget {
    AddNewUserScreen({Key? key}) : super(key: key);

  final UserController controller = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: SingleChildScrollView(
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
              Form(
                key: controller.formKey,

                child: Row(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius:2,
                              blurRadius: 2,
                              offset: Offset(0, 1),
                            ),
                          ],
                        ),

                        width: Get.width * 0.17,

                        child: TextFormField(
                          controller: controller.nameController,
                          validator: controller.validateName,
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

                        width: Get.width * 0.17,

                        child: TextFormField(
                          controller: controller.emailController,
                          validator: controller.validateEmail,
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
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),

                        width: Get.width * 0.17,

                        child: TextFormField(
                          controller: controller.passwordController,
                          validator: controller.validatePassword,
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: 'Password',hintStyle: TextStyles.textFieldSmallHint,

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

                        width: Get.width * 0.17,

                        child: TextFormField(
                          controller: controller.mobileNumberController,
                          validator: controller.validateMobile,
                          decoration: InputDecoration(
                              hintText: 'Mobile No',hintStyle: TextStyles.textFieldSmallHint
                          ),
                        )),
                    20.pw,

                  ],
                ),),


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

              Center(
                child: ElevatedButtonW(
                  buttonText: 'Add New User ' ,
                  width: 250,
                  onTap: (){
                    print("button tapped");

                    controller.registerAdmin(context);

                    print("button tapped again ");

                  },
                ),)

            ],
          ),
        ),
      ),
    );
  }
}


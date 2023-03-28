import 'package:add_happy_hour_admin/core/utils/assets_constants.dart';
import 'package:add_happy_hour_admin/core/utils/colors.dart';
import 'package:add_happy_hour_admin/view/widgets/buttons.dart';
import 'package:add_happy_hour_admin/view/widgets/size_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/utils/styles.dart';
import '../dashboard/dashboard_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,

      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 12),

              width: context.width * 0.5,
              color: bgColor,

              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                   30.ph,
                    Image.asset(imgLogo , width: 100 , height: 100,),
                    40.ph,
                    TextFormField(
                      decoration: InputDecoration(

                          hintText: "Email" , hintStyle: TextStyles.textFieldSmallHint,
                          suffixIcon: Icon(Icons.email, size: 18,)
                      ),
                    ),
                    30.ph,
                    TextFormField(
                      decoration: InputDecoration(

                          hintText: 'Password' , hintStyle: TextStyles.textFieldSmallHint,
                          suffixIcon: const Icon(Icons.lock , size: 18,)
                      ),
                    ),
                    20.ph,

                    ListTile(
                      leading:  Checkbox(
                        value: false,
                        onChanged: (value) {},
                      ),
                      title:   const Text('Remember me'),


                    ),


                   20.ph,
                    ElevatedButtonW(buttonText: 'Log in ', onTap: (){
                      Get.to(()=> const DashBoardScreen());
                    },),
                  20.ph,




                  ],
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}

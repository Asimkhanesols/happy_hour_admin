import 'package:add_happy_hour_admin/core/utils/assets_constants.dart';
import 'package:add_happy_hour_admin/core/utils/colors.dart';
import 'package:add_happy_hour_admin/view/widgets/buttons.dart';
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
              margin: EdgeInsets.symmetric(horizontal: 12),

              width: context.width * 0.3,
              color: bgColor,

              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 30,),
                    Image.asset(imgLogo , width: 100 , height: 100,),
                    SizedBox(height: 40,),
                    TextFormField(
                      decoration: InputDecoration(

                          hintText: "Email" , hintStyle: TextStyles.textFieldSmallHint,
                          suffixIcon: Icon(Icons.email, size: 18,)
                      ),
                    ),
                    SizedBox(height: 30,),
                    TextFormField(
                      decoration: InputDecoration(

                          hintText: 'Password' , hintStyle: TextStyles.textFieldSmallHint,
                          suffixIcon: Icon(Icons.lock , size: 18,)
                      ),
                    ),
                    SizedBox(height: 20),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (value) {},
                        ),
                        Text('Remember me'),
                      ],
                    ),
                    SizedBox(height: 20),
                    ElevatedButtonW(buttonText: 'Log in ', onTap: (){
                      Get.to(DashBoardScreen());
                    },),
                    SizedBox(height: 20),




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

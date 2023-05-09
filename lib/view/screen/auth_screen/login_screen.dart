


import '../../../core/utils/export.dart';
import 'login_controller.dart';


class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final controller = Get.put(LoginController());

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
                width: context.width * 0.4,
                color: bgColor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      30.ph,
                      Image.asset(
                        imgLogo,
                        width: 100,
                        height: 100,
                      ),
                      40.ph,
                      // form for email and password
                      Form(
                        key: controller.formKey,
                          child: Column(
                        children: [
                          // email
                          TextFormField(
                            controller: controller.emailController,
                            validator: controller.validateEmail,
                            decoration: InputDecoration(
                                hintText: "Email",
                                hintStyle: TextStyles.textFieldSmallHint,
                                suffixIcon: const Icon(
                                  Icons.email,
                                  size: 18,
                                )),
                          ),
                          30.ph,
                          // password text filed
                          TextFormField(
                            controller: controller.passwordController,
                            validator: controller.validatePassword,
                            obscureText: true,
                            decoration: InputDecoration(
                                hintText: 'Password',
                                hintStyle: TextStyles.textFieldSmallHint,
                                suffixIcon: const Icon(
                                  Icons.lock,
                                  size: 18,
                                )),
                          ),
                          20.ph,
                          // remember me  the Admin
                          Obx(() => ListTile(
                            leading: Checkbox(
                              activeColor: whiteColor,
                              value: controller.rememberMe.value,
                              onChanged: (value) {
                                controller.rememberMe.value = value!;
                              },
                            ),
                            title: const Text('Remember me'),
                          ),),

                          20.ph,


                          ElevatedButtonW(

                            buttonText:  'Log in ',
                            onTap: controller.loginAdmin,
                          ),
                          20.ph,
                        ],
                      ))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}

 import 'package:flutter/cupertino.dart';

import '../../../core/utils/export.dart';

// dashboard screen for the side menu and their their relevant screen

class DashBoardScreen extends StatelessWidget {
  DashBoardScreen({Key? key}) : super(key: key);

  final  DashBoardController controller = Get.put(DashBoardController());
  @override
  Widget build(BuildContext context) {

    return Scaffold(

        backgroundColor: bgColor,

        body: Obx(() => Row(
              children: <Widget>[

                //Side menu of dashboard screen
                Stack(
                  children: [
                    NavigationRail(

                      backgroundColor: whiteColor,
                      indicatorColor: primaryColor,
                      selectedIconTheme:
                          const IconThemeData(color: primaryColor),
                      selectedLabelTextStyle:
                          const TextStyle(color: primaryColor),
                      selectedIndex: controller.selectedIndex,
                      extended: true,
                      onDestinationSelected: controller.onDestinationSelected,
                      leading: const Image(
                        width: 150,
                        height: 150,
                        image: AssetImage(
                          imgLogo,
                        ),
                      ),
                      destinations: [
                        NavigationRailDestination(
                          icon: Image(
                            width: 20,
                            height: 20,
                            color: controller.selectedIndex == 0
                                ? primaryColor
                                : null,
                            image: const AssetImage(
                              imgDash,
                            ),
                          ),
                          label: const Text(
                            'Dashboard',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        NavigationRailDestination(
                          icon: Image(
                            width: 20,
                            height: 20,
                            color: controller.selectedIndex == 1
                                ? primaryColor
                                : null,
                            image: const AssetImage(
                              imgHappyHour,
                            ),
                          ),
                          label: const Text(
                            'Happy Hours',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        NavigationRailDestination(
                          icon: Image(
                            width: 20,
                            height: 20,
                            color: controller.selectedIndex == 2
                                ? primaryColor
                                : null,
                            image: const AssetImage(
                              imgUser,
                            ),
                          ),
                          label: const Text(
                            'Users',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        NavigationRailDestination(
                          icon: Image(
                            width: 20,
                            height: 20,
                            color: controller.selectedIndex == 3
                                ? primaryColor
                                : null,
                            image: const AssetImage(
                              imgWelcome,
                            ),
                          ),
                          label: const Text(
                            'Welcome Screen',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        NavigationRailDestination(
                          icon: Image(
                            width: 20,
                            height: 20,
                            color: controller.selectedIndex == 4
                                ? primaryColor
                                : null,
                            image: const AssetImage(
                              imgFlag,
                            ),
                          ),
                          label: const Text(
                            'Flag Report',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        NavigationRailDestination(
                          icon: Image(
                            width: 20,
                            height: 20,
                            color: controller.selectedIndex == 5
                                ? primaryColor
                                : null,
                            image: const AssetImage(
                              imgPackage,
                            ),
                          ),
                          label: const Text(
                            'Package',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                        bottom: 0,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: InkWell(
                            onTap: () {
                             controller.signOut();
                            },
                            child: Row(
                              children: const [
                                SizedBox(
                                  width: 25,
                                ),
                                Icon(CupertinoIcons.square_arrow_left,
                                    color: Colors.black54),
                                SizedBox(
                                  width: 25,
                                ),
                                Text(
                                  "Logout",
                                )
                              ],
                            ),
                          ),
                        ))
                  ],
                ),

                // main body or main part of screen
                Expanded(
                    child: controller.isNew.value == true
                        ? controller.newScreens
                            .elementAt(controller.tempSelectedIndex)
                        : controller.screens
                            .elementAt(controller.selectedIndex)),
              ],
            )));
  }
}

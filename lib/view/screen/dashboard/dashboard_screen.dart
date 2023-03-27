import 'package:add_happy_hour_admin/core/utils/assets_constants.dart';
import 'package:add_happy_hour_admin/core/utils/colors.dart';
import 'package:add_happy_hour_admin/view/screen/dashboard/dashboard_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/responsive.dart';


class DashBoardScreen extends GetView<DashBoardController> {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(DashBoardController());
    return Scaffold(
      backgroundColor: halfGrey,
      body: Obx(() => Row(
        children: <Widget>[
          if(Responsive.isDesktop())
            Stack(
            children: [
              NavigationRail(

                backgroundColor: whiteColor,
                indicatorColor: primaryColor,
                selectedIconTheme: const IconThemeData(color: primaryColor),


                selectedLabelTextStyle:
                const TextStyle(color: primaryColor),
                selectedIndex: controller.selectedIndex,
                extended: context.width > 1000 ? true : false,
                onDestinationSelected: controller.onDestinationSelected,
                leading: const Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Image(
                    width: 150,
                    height: 150,
                    image: AssetImage(
                      imgLogo,

                    ),
                  ),
                ),
                destinations:    [

                  NavigationRailDestination(
                    icon: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Image(
                        width: 20,
                        height: 20,
                        color: controller.selectedIndex == 0 ? primaryColor : null,
                        image: AssetImage(
                          imgDash,
                        ),
                      ),
                    ),

                    label: Text(
                      'Dashboard',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),


                  NavigationRailDestination(
                    icon: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Image(
                        width: 20,
                        height: 20,
                        color: controller.selectedIndex == 1 ? primaryColor : null,
                        image: const AssetImage(
                          imgHappyHour,
                        ),
                      ),
                    ),

                    label: Text(
                      'Happy Hours',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  NavigationRailDestination(
                    icon: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Image(
                        width: 20,
                        height: 20,
                        color: controller.selectedIndex == 2 ? primaryColor : null,

                        image: AssetImage(
                          imgUser,
                        ),
                      ),
                    ),

                    label: Text(
                      'Users',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  NavigationRailDestination(
                    icon: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Image(
                        width: 20,
                        height: 20,
                        color: controller.selectedIndex == 3 ? primaryColor : null,
                        image: AssetImage(
                          imgWelcome,
                        ),
                      ),
                    ),

                    label: Text(
                      'Welcome Screen',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  NavigationRailDestination(
                    icon: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Image(
                        width: 20,
                        height: 20,
                        color: controller.selectedIndex == 4 ? primaryColor : null,
                        image: AssetImage(
                          imgFlag,
                        ),
                      ),
                    ),

                    label: Text(
                      'Flag Report',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  NavigationRailDestination(
                    icon: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Image(
                        width: 20,
                        height: 20,
                        color: controller.selectedIndex == 5 ? primaryColor : null,
                        image: AssetImage(
                          imgPackage,
                        ),
                      ),
                    ),

                    label: Text(
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
                      onTap: (){

                      },
                      child: Row(
                        children: [
                          SizedBox(
                            width: 25,
                          ),
                          Icon(CupertinoIcons.square_arrow_left,color: Colors.black54),
                          SizedBox(width: 25,),
                          Text(
                            "Logout",

                          )
                        ],
                      ),
                    ),
                  ))

            ],
          ),

          Expanded(

              child: controller.isNew.value == true
                  ? controller.newScreens
                  .elementAt(controller.tempSelectedIndex)
                  : controller.screens.elementAt(controller.selectedIndex)),

        ],
      ))
    );
  }

}




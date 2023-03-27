import 'package:add_happy_hour_admin/view/screen/packages/add_packages.dart';
import 'package:add_happy_hour_admin/view/widgets/alert_dialogue.dart';
import 'package:add_happy_hour_admin/view/widgets/buttons.dart';
import 'package:add_happy_hour_admin/view/widgets/size_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/assets_constants.dart';
import '../../../core/utils/colors.dart';
import '../../../core/utils/styles.dart';


class PackagesScreen extends StatelessWidget {
  const PackagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: Navigator(
        onGenerateRoute: (setting)=> MaterialPageRoute(
            builder: (BuildContext context) {
              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15,top: 15,right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(),

                          Row(
                            children: [
                              Container(
                                height: 60,
                                width: 80,

                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(imgProfile),
                              ),
                              5.pw,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Hello, George', style: TextStyles.smallBlackText),
                                  5.ph,
                                  Text('admin', style: TextStyles.greyMostSmallBodyText)
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      20.ph,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              Text('Packages ' , style: TextStyles.boldBodyText,),
                              10.ph,
                              Text('You can see all the packages here. Also you can add the new packages. ' , style: TextStyles.greySmallBodyText,),
                            ],),
                          ElevatedButtonW(buttonText: 'Add new Package',width: 200,height: 50,
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context){
                                    return  AddNewPackage();
                                  }));
                            },
                          )
                        ],
                      ),


                      Row(
                        children: [
                          Container(
                            height: 220,
                            width: 240,
                            color: whiteColor,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                    child: Text('Free Account',style: TextStyles.bottomPrimaryColorText,),
                                  ),
                                  20.ph,
                                  Text('Lorem ipsum dolor sit amet, consectetur adipis '
                                      'cing elit. Etia odio est, laoreet vitae dictum ac, acc msan vitae erat.',
                                    textAlign: TextAlign.start,
                                    style: TextStyles.greyMostSmallBodyText,
                                  ),
                                  15.ph,
                                  Text('Price', style: TextStyles.smallBlackText,),
                                  10.ph,
                                  Text('\$5', style: TextStyles.greyUltraSmallBodyText,),


                                  15.ph,
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(

                                        child: Container(
                                          height: 28,
                                          width: 28,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              shape: BoxShape.circle,
                                              boxShadow: const [
                                                BoxShadow(color: Colors.black26, blurRadius: 4.0, spreadRadius: 0.3)
                                              ]
                                          ),
                                          child: Center(child: Icon(Icons.edit,size: 18,)),
                                        ),
                                      ),
                                      20.pw,

                                      InkWell(
                                        onTap: (){
                                          showDialog(context: context,
                                              builder: (context){
                                            return deletePackageDialogueW();
                                              });
                                        },

                                        child: Container(
                                          height: 28,
                                          width: 28,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              shape: BoxShape.circle,
                                              boxShadow: const [
                                                BoxShadow(color: Colors.black26, blurRadius: 4.0, spreadRadius: 0.3)
                                              ]
                                          ),
                                          child: Center(child: Icon(CupertinoIcons.delete,size: 18,color: Colors.red,)),
                                        ),
                                      )
                                    ],
                                  )

                                ],
                              ),
                            )
                            ,
                          ),
                          20.pw,
                          Container(
                            height: 220,
                            width: 240,
                            color: whiteColor,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                    child: Text('Free Account',style: TextStyles.bottomPrimaryColorText,),
                                  ),
                                  20.ph,
                                  Text('Lorem ipsum dolor sit amet, consectetur adipis '
                                      'cing elit. Etia odio est, laoreet vitae dictum ac, acc msan vitae erat.',
                                    textAlign: TextAlign.start,
                                    style: TextStyles.greyMostSmallBodyText,
                                  ),
                                  15.ph,
                                  Text('Price', style: TextStyles.smallBlackText,),
                                  10.ph,
                                  Text('\$5', style: TextStyles.greyUltraSmallBodyText,),


                                  15.ph,
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      InkWell(

                                        child: Container(
                                          height: 28,
                                          width: 28,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              shape: BoxShape.circle,
                                              boxShadow: const [
                                                BoxShadow(color: Colors.black26, blurRadius: 4.0, spreadRadius: 0.3)
                                              ]
                                          ),
                                          child: Center(child: Icon(Icons.edit,size: 18,)),
                                        ),
                                      ),
                                      20.pw,

                                      InkWell(

                                        child: Container(
                                          height: 28,
                                          width: 28,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              shape: BoxShape.circle,
                                              boxShadow: const [
                                                BoxShadow(color: Colors.black26, blurRadius: 4.0, spreadRadius: 0.3)
                                              ]
                                          ),
                                          child: Center(child: Icon(CupertinoIcons.delete,size: 18,color: Colors.red,)),
                                        ),
                                      )
                                    ],
                                  )

                                ],
                              ),
                            )
                            ,
                          ),

                        ],
                      ),









                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}

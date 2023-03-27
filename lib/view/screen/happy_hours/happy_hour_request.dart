 import 'package:add_happy_hour_admin/view/widgets/alert_dialogue.dart';
import 'package:add_happy_hour_admin/view/widgets/size_box.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/assets_constants.dart';
import '../../../core/utils/styles.dart';
import '../../widgets/buttons.dart';


class HappyHourRequestScreen extends StatelessWidget {
  const HappyHourRequestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ClipRect(
      child: Navigator(
        onGenerateRoute: (settings) => MaterialPageRoute(
          builder: (context) => SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 30,top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(),

                      Row(
                        children: [
                          Container(
                            height: 60,
                            width: 80,

                            decoration: const BoxDecoration(
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
                  30.ph,

                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Happy Hours Request',style: TextStyles.boldBodyText,),
                          5.ph,
                          Text('You can see all the active happy hours requests here.',style: TextStyles.greyMostSmallBodyText, )
                        ],
                      ),
                      const Spacer(),
                      SizedBox(
                        width: 240,
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "Search here" , hintStyle: TextStyles.textFieldSmallHint,
                              suffixIcon: const Icon(Icons.search),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(2),
                                  borderSide: BorderSide.none
                              )
                          ),

                        ),
                      ),


                      20.pw,

                      20.pw,
                    ],
                  ),
                  30.ph,
                  Column(
                    children: [
                      Table(
                        defaultVerticalAlignment: TableCellVerticalAlignment.middle,

                        border: const TableBorder(
                          bottom: BorderSide(color: Colors.black, width: 1),
// borderRadius: BorderRadius.only(topRight: Radius.circular(60),topLeft: Radius.circular(15),),
//   horizontalInside: BorderSide(color: Colors.red, width: 2),
                        ),
                        columnWidths: const {
                          0: FlexColumnWidth(0.1),
                          1: FlexColumnWidth(0.2),
                          2: FlexColumnWidth(0.2),
                          3: FlexColumnWidth(0.2),
                          4: FlexColumnWidth(0.2),
                          5: FlexColumnWidth(0.2),
                          6: FlexColumnWidth(0.2),
                          7: FlexColumnWidth(0.2),

                        },
                        children: [
                          TableRow(
                              decoration:
                              const BoxDecoration(color: Colors.white),
                              children: [
                                TableCell(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('Id',style: TextStyles.bodyText,),
                                    )),
                                TableCell(
                                    child: Text('Business Name',style: TextStyles.bodyText,)),
                                TableCell(
                                    child: Text('Address',style: TextStyles.bodyText,)),
                                TableCell(
                                    child: Text('City',style: TextStyles.bodyText,)),
                                TableCell(
                                    child: Text('User Name',style: TextStyles.bodyText,)),
                                TableCell(
                                    child: Text('Email',style: TextStyles.bodyText,)),
                                TableCell(
                                    child: Text('Mobile Number',style: TextStyles.bodyText,)),
                                TableCell(
                                    child: Center(child: Text('Action',style: TextStyles.bodyText,))),

                              ]),

                        ],
                      ),

                      ListView.builder(
                          shrinkWrap: true,
                          physics: const ScrollPhysics(),
                          itemCount: 8,
                          itemBuilder: (context, index) {
                            return
                              Table(
                                defaultVerticalAlignment: TableCellVerticalAlignment.middle,

                                border: const TableBorder(
// bottom: BorderSide(color: Colors.black, width: 1),
// borderRadius: BorderRadius.only(topRight: Radius.circular(60),topLeft: Radius.circular(15),),
//   horizontalInside: BorderSide(color: Colors.red, width: 2),
                                ),
                                columnWidths: const {
                                  0: FlexColumnWidth(0.1),
                                  1: FlexColumnWidth(0.2),
                                  2: FlexColumnWidth(0.2),
                                  3: FlexColumnWidth(0.2),
                                  4: FlexColumnWidth(0.2),
                                  5: FlexColumnWidth(0.2),
                                  6: FlexColumnWidth(0.2),
                                  7: FlexColumnWidth(0.2),

                                },
                                children: [
                                  TableRow(
                                      decoration:
                                      const BoxDecoration(color: Colors.white),
                                      children: [
                                        TableCell(
                                            child: Padding(
                                              padding:
                                              EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                                              child: Text("${index +1} "),
                                            )),
                                        TableCell(
                                            child: Padding(
                                              padding:
                                              EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                                              child: Text('Lorem Ipsum', style: TextStyles.smallBlackText,),
                                            )),
                                        TableCell(
                                            child: Padding(
                                              padding:
                                              EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                                              child: Text('Lorem Ipsum', style: TextStyles.smallBlackText,),
                                            )),
                                        TableCell(
                                            child: Padding(
                                              padding:
                                              EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                                              child: Text('Lorem Ipsum', style: TextStyles.smallBlackText,),
                                            )),
                                        TableCell(
                                            child: Padding(
                                              padding:
                                              EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                                              child: Text('Lorem Ipsum', style: TextStyles.smallBlackText,),
                                            )),
                                        TableCell(
                                            child: Padding(
                                              padding:
                                              EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                                              child: Text('Lorem Ipsum', style: TextStyles.smallBlackText,),
                                            )),
                                        TableCell(
                                            child: Padding(
                                              padding:
                                              EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                                              child: Text('Lorem Ipsum', style: TextStyles.smallBlackText,),
                                            )),
                                        TableCell(
                                            child: Padding(
                                              padding:
                                              EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                                              child: ElevatedButtonW(buttonText: 'Action',height: 30,width: 80,
                                                onTap: (){
                                                  showDialog(context: context,
                                                      builder: (context){
                                                        return requestHappyHourDialogueW();
                                                      });
                                                },

                                              ),
                                            )),

                                      ]),

                                ],
                              );
                          }   )
                    ],
                  ),
                  20.ph,
                  Row(
                    children: [
                      Column(
                        children: [
                          5.ph,
                          Text('Showing 1 to 10 of 30 entries',style: TextStyles.smallBlackText, )
                        ],
                      ),
                      Spacer(),
                      Text('Previous',style: TextStyles.smallBlackText, ),
                      ElevatedButtonW(
                        buttonText: "1", height: 40,width: 40,buttonRadius: 4,),

                      20.pw,
                      Text('Next',style: TextStyles.smallBlackText, ),
                      20.pw,
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


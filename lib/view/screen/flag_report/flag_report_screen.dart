import 'package:add_happy_hour_admin/core/utils/colors.dart';
import 'package:add_happy_hour_admin/view/widgets/alert_dialogue.dart';
import 'package:add_happy_hour_admin/view/widgets/size_box.dart';
import 'package:add_happy_hour_admin/view/widgets/top_row.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/assets_constants.dart';
 import '../../../core/utils/styles.dart';
 import 'package:get/get.dart';
import '../../widgets/buttons.dart';


class FlagReportScreen extends StatelessWidget {
  const FlagReportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: Get.height,
      width: Get.width,
      color: bgColor,
      child: Padding(

        padding: const EdgeInsets.only(top: 20,right: 30,left: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

             const TopRow(),
              30.ph,

              Text('Flag Reports',style: TextStyles.boldBodyText,),
              5.ph,
              Text('You can see all the app user flag reports here.',style: TextStyles.greyMostSmallBodyText, ),




              20.pw,
              30.ph,
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
                              padding: const EdgeInsets.all(8),
                              child: Text('ID',style: TextStyles.tableText,),
                            )),
                        TableCell(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Business Name',style: TextStyles.tableText,),
                            )),
                        TableCell(
                            child: Text('Address',style: TextStyles.tableText,)),
                        TableCell(
                            child: Text('City',style: TextStyles.tableText,)),
                        TableCell(
                            child: Text('User Name',style: TextStyles.tableText,)),
                        TableCell(
                            child: Text('Email',style: TextStyles.tableText,)),
                        TableCell(
                            child: Text('Mobile Number',style: TextStyles.tableText,)),
                        TableCell(
                            child: Center(child: Text('Action',style: TextStyles.tableText,),)),

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
                                      EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                                      child: Text("${index +1} "),
                                    )),
                                TableCell(
                                    child: Padding(
                                      padding:
                                      EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                                      child: Text('Lorem Ipsum', style: TextStyles.smallBlackText,),
                                    )),
                                TableCell(
                                    child: Padding(
                                      padding:
                                      EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                                      child: Text('Lorem Ipsum', style: TextStyles.smallBlackText,),
                                    )),
                                TableCell(
                                    child: Padding(
                                      padding:
                                      EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                                      child: Text('Lorem Ipsum', style: TextStyles.smallBlackText,),
                                    )),
                                TableCell(
                                    child: Padding(
                                      padding:
                                      EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                                      child: Text('Lorem Ipsum', style: TextStyles.smallBlackText,),
                                    )),
                                TableCell(
                                    child: Padding(
                                      padding:
                                      EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                                      child: Text('Lorem Ipsum', style: TextStyles.smallBlackText,),
                                    )),
                                TableCell(
                                    child: Padding(
                                      padding:
                                      EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                                      child: Text('Lorem Ipsum', style: TextStyles.smallBlackText,),
                                    )),
                                TableCell(
                                    child: Padding(
                                      padding:
                                      const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                                      child: ElevatedButtonW(buttonText: 'Action',height: 30,width: 80,
                                        onTap: (){
                                          showDialog(context: context,
                                              builder: (context){
                                                return flagReportDetailDialogueW();
                                              });
                                        },

                                      ),
                                    )),

                              ]),

                        ],
                      );
                  }   ),
              20.ph,
              Row(
                children: [
                  Column(
                    children: [
                      5.ph,
                      Text('Showing 1 to 10 of 30 entries',style: TextStyles.smallBlackText, )
                    ],
                  ),
                  const Spacer(),
                  Text('Previous',style: TextStyles.smallBlackText, ),
                  20.pw,
                  const ElevatedButtonW(
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
    );
  }
}






import 'package:flutter/cupertino.dart';

import '../../../core/utils/export.dart';
import 'claim_hour_request.dart';

class FlagReportScreen extends StatelessWidget {
  FlagReportScreen({Key? key}) : super(key: key);

  final controller = Get.put(ReportHourController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      width: Get.width,
      color: bgColor,
      child: Navigator(
        onGenerateRoute: (setting) => MaterialPageRoute(
            builder: (context) => SingleChildScrollView(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 20, right: 30, left: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const TopRow(),
                        30.ph,
                        Row(
                          children: [
                            Text(
                              'Flag Reports',
                              style: TextStyles.boldBodyText,
                            ),
                            Spacer(),
                            Obx(
                              () => Container(
                                height: 40,
                                width: 200,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.black26,
                                          blurRadius: 4.0,
                                          spreadRadius: 0.3)
                                    ],
                                    color: whiteColor),
                                child: Center(
                                  child: DropdownButton(
                                    value: controller.selectedOption.value,
                                    isDense: true,
                                    underline: const SizedBox(),
                                    style: TextStyles.bottomBlackText,
                                    icon: const Icon(
                                      CupertinoIcons
                                          .arrowtriangle_down_circle,
                                      color: primaryColor,
                                    ),
                                    items: [
                                      'Report happy hour',
                                      'Claim happy hour'
                                    ].map((item) {
                                      return DropdownMenuItem(
                                        value: item,
                                        child: Text(item),
                                      );
                                    }).toList(),
                                    onChanged: (newValue) {
                                      controller.selectedOption.value =
                                          newValue!;
                                      if (newValue == 'Claim happy hour') {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: (context) {
                                          return  ClaimHourScreen();
                                        }));
                                      }
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        5.ph,
                        Text(
                          'You can see all the app user flag reports here.',
                          style: TextStyles.greyMostSmallBodyText,
                        ),
                        20.pw,
                        30.ph,
                        ReportedHourTableW()
                        // Table(
                        //   defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                        //
                        //   border: const TableBorder(
                        //     bottom: BorderSide(color: Colors.black, width: 1),
                        //     // borderRadius: BorderRadius.only(topRight: Radius.circular(60),topLeft: Radius.circular(15),),
                        //     //   horizontalInside: BorderSide(color: Colors.red, width: 2),
                        //   ),
                        //   columnWidths: const {
                        //     0: FlexColumnWidth(0.1),
                        //     1: FlexColumnWidth(0.2),
                        //     2: FlexColumnWidth(0.2),
                        //     3: FlexColumnWidth(0.2),
                        //     4: FlexColumnWidth(0.2),
                        //     5: FlexColumnWidth(0.2),
                        //     6: FlexColumnWidth(0.2),
                        //     7: FlexColumnWidth(0.2),
                        //
                        //   },
                        //   children: [
                        //     TableRow(
                        //         decoration:
                        //         const BoxDecoration(color: Colors.white),
                        //         children: [
                        //           TableCell(
                        //               child: Padding(
                        //                 padding: const EdgeInsets.all(8),
                        //                 child: Text('ID',style: TextStyles.tableText,),
                        //               )),
                        //           TableCell(
                        //               child: Padding(
                        //                 padding: const EdgeInsets.all(8.0),
                        //                 child: Text('Business Name',style: TextStyles.tableText,),
                        //               )),
                        //           TableCell(
                        //               child: Text('Address',style: TextStyles.tableText,)),
                        //           TableCell(
                        //               child: Text('City',style: TextStyles.tableText,)),
                        //           TableCell(
                        //               child: Text('User Name',style: TextStyles.tableText,)),
                        //           TableCell(
                        //               child: Text('Email',style: TextStyles.tableText,)),
                        //           TableCell(
                        //               child: Text('Mobile Number',style: TextStyles.tableText,)),
                        //           TableCell(
                        //               child: Center(child: Text('Action',style: TextStyles.tableText,),)),
                        //
                        //         ]),
                        //
                        //   ],
                        // ),
                        //
                        // ListView.builder(
                        //     shrinkWrap: true,
                        //     physics: const ScrollPhysics(),
                        //     itemCount: 8,
                        //     itemBuilder: (context, index) {
                        //       return
                        //         Table(
                        //           defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                        //
                        //           border: const TableBorder(
                        //             // bottom: BorderSide(color: Colors.black, width: 1),
                        //             // borderRadius: BorderRadius.only(topRight: Radius.circular(60),topLeft: Radius.circular(15),),
                        //             //   horizontalInside: BorderSide(color: Colors.red, width: 2),
                        //           ),
                        //           columnWidths: const {
                        //             0: FlexColumnWidth(0.1),
                        //             1: FlexColumnWidth(0.2),
                        //             2: FlexColumnWidth(0.2),
                        //             3: FlexColumnWidth(0.2),
                        //             4: FlexColumnWidth(0.2),
                        //             5: FlexColumnWidth(0.2),
                        //             6: FlexColumnWidth(0.2),
                        //             7: FlexColumnWidth(0.2),
                        //
                        //           },
                        //           children: [
                        //             TableRow(
                        //                 decoration:
                        //                 const BoxDecoration(color: Colors.white),
                        //                 children: [
                        //                   TableCell(
                        //                       child: Padding(
                        //                         padding:
                        //                         EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                        //                         child: Text("${index +1} "),
                        //                       )),
                        //                   TableCell(
                        //                       child: Padding(
                        //                         padding:
                        //                         EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                        //                         child: Text('Lorem Ipsum', style: TextStyles.smallBlackText,),
                        //                       )),
                        //                   TableCell(
                        //                       child: Padding(
                        //                         padding:
                        //                         EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                        //                         child: Text('Lorem Ipsum', style: TextStyles.smallBlackText,),
                        //                       )),
                        //                   TableCell(
                        //                       child: Padding(
                        //                         padding:
                        //                         EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                        //                         child: Text('Lorem Ipsum', style: TextStyles.smallBlackText,),
                        //                       )),
                        //                   TableCell(
                        //                       child: Padding(
                        //                         padding:
                        //                         EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                        //                         child: Text('Lorem Ipsum', style: TextStyles.smallBlackText,),
                        //                       )),
                        //                   TableCell(
                        //                       child: Padding(
                        //                         padding:
                        //                         EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                        //                         child: Text('Lorem Ipsum', style: TextStyles.smallBlackText,),
                        //                       )),
                        //                   TableCell(
                        //                       child: Padding(
                        //                         padding:
                        //                         EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                        //                         child: Text('Lorem Ipsum', style: TextStyles.smallBlackText,),
                        //                       )),
                        //                   TableCell(
                        //                       child: Padding(
                        //                         padding:
                        //                         const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                        //                         child: ElevatedButtonW(buttonText: 'Action',height: 30,width: 80,
                        //                           onTap: (){
                        //                             showDialog(context: context,
                        //                                 builder: (context){
                        //                                   return flagReportDetailDialogueW();
                        //                                 });
                        //                           },
                        //
                        //                         ),
                        //                       )),
                        //
                        //                 ]),
                        //
                        //           ],
                        //         );
                        //     }   ),
                        ,
                        20.ph,
                        Row(
                          children: [
                            Column(
                              children: [
                                5.ph,
                                Text(
                                  'Showing 1 to 10 of 30 entries',
                                  style: TextStyles.smallBlackText,
                                )
                              ],
                            ),
                            const Spacer(),
                            Text(
                              'Previous',
                              style: TextStyles.smallBlackText,
                            ),
                            20.pw,
                            const ElevatedButtonW(
                              buttonText: "1",
                              height: 40,
                              width: 40,
                              buttonRadius: 4,
                            ),
                            20.pw,
                            Text(
                              'Next',
                              style: TextStyles.smallBlackText,
                            ),
                            20.pw,
                          ],
                        ),
                      ],
                    ),
                  ),
                )),
      ),
    );
  }
}

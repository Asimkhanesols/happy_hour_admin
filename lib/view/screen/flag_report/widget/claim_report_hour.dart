
import 'package:add_happy_hour_admin/core/utils/assets_constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../../../../core/data/model/happy_hour_model.dart';
import '../../../../core/utils/styles.dart';
import '../../../widgets/buttons.dart';


class ClaimedHourTableW extends StatelessWidget {
  ClaimedHourTableW({
    Key? key,
  }) : super(key: key);
  final CollectionReference happyHourRef =
  FirebaseFirestore.instance.collection('happyHourClaimReports');




  @override
  Widget build(BuildContext context) {
    return Column(
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
                BoxDecoration(color: Colors.white),
                children: [
                  TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('ID',style: TextStyles.tableText,),
                      )),
                  TableCell(
                      child: Text('Hour Id',style: TextStyles.tableText,)),
                  TableCell(
                      child: Text('Report Text',style: TextStyles.tableText,)),
                  TableCell(
                      child: Text('ReportImage',style: TextStyles.tableText,)),
                  TableCell(
                      child: Text('Report Time',style: TextStyles.tableText,)),
                  TableCell(
                      child: Text('Status ',style: TextStyles.tableText,)),
                  TableCell(
                      child: Text('User Id',style: TextStyles.tableText,)),
                  TableCell(
                      child: Center(child: Text('Action',style: TextStyles.tableText,))),

                ]),

          ],
        ),

        StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance.collection('happyHourClaimReports').snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot>snapshot ) {
              if(snapshot.hasError){
                return Text('Error: ${snapshot.error}');
              }
              if(snapshot.connectionState == ConnectionState.waiting){
                return const CircularProgressIndicator();
              }

              final List<ClaimHourModel> happyHours = snapshot.data!.docs.map((DocumentSnapshot document) {
                return ClaimHourModel.fromDocument(document);
              }).toList();




              return  Table(
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
                  3: FlexColumnWidth(0.1),
                  4: FlexColumnWidth(0.2),
                  5: FlexColumnWidth(0.2),
                  6: FlexColumnWidth(0.2),
                  7: FlexColumnWidth(0.2),


                },
                children : List.generate(
                    snapshot.data!.docs.length, (index) {
                  final ClaimHourModel happyHour = happyHours[index];

                  var image = happyHour.businessCardImage ?? imgProfile;



                  return  TableRow(
                    decoration: const BoxDecoration(color: Colors.white),
                    children: [
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                          child: Text("${index +1} "),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                          child: Text(  '', style: TextStyles.smallBlackText),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                          child: Text(happyHour.reportText ?? '', style: TextStyles.smallBlackText),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                          child:   SizedBox(
                            height: 60,
                             child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Image.network(
                                image,
                                 fit: BoxFit.fitWidth,
                              ),
                            ),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                          child: Text(happyHour.reportTime?.toDate().toString() ?? '', style: TextStyles.smallBlackText),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                          child: Text(happyHour.status ?? '', style: TextStyles.smallBlackText),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                          child: Text(happyHour.uid ?? '', style: TextStyles.smallBlackText),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                          child: ElevatedButtonW(
                            buttonText: 'Action',
                            height: 30,
                            width: 80,
                            onTap: () {
                              // var docId = snapshot.data!.docs[index].id;
                              // print(docId);
                              //
                              // showDialog(
                              //   context: context,
                              //   builder: (context) {
                              //     return flagReportDetailDialogueW(happyHours[index].hourId , happyHours[index].uid);
                              //   },
                              // );
                            },
                          ),
                        ),
                      ),
                    ],
                  );
                }),
              );



            }
        ),


        // Getting data from firebase of happy hour

      ],
    );
  }
}
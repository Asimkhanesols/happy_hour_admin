import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../../../core/data/model/happy_hour_model.dart';
import '../../../../core/utils/styles.dart';
import '../../../widgets/buttons.dart';
import 'active_happy_hour_dialogue.dart';

class ActiveHappyHourTableW extends StatelessWidget {
  ActiveHappyHourTableW({
    Key? key,
  }) : super(key: key);
  final CollectionReference happyHourRef =
      FirebaseFirestore.instance.collection('happyhours');

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
            TableRow(decoration: BoxDecoration(color: Colors.white), children: [
              TableCell(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'ID',
                  style: TextStyles.tableText,
                ),
              )),
              TableCell(
                  child: Text(
                'Business Name',
                style: TextStyles.tableText,
              )),
              TableCell(
                  child: Text(
                'Address',
                style: TextStyles.tableText,
              )),
              TableCell(
                  child: Text(
                'City',
                style: TextStyles.tableText,
              )),
              TableCell(
                  child: Text(
                'User Name',
                style: TextStyles.tableText,
              )),
              TableCell(
                  child: Text(
                'Email',
                style: TextStyles.tableText,
              )),
              TableCell(
                  child: Text(
                'Mobile Number',
                style: TextStyles.tableText,
              )),
              TableCell(
                  child: Center(
                      child: Text(
                'Action',
                style: TextStyles.tableText,
              ))),
            ]),
          ],
        ),

        StreamBuilder<QuerySnapshot>(
            stream:
                FirebaseFirestore.instance.collection('happyhours').snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              }
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              }
              final List<HappyHourModel> happyHours =
                  snapshot.data!.docs.map((DocumentSnapshot document) {
                return HappyHourModel.fromMap(document);
              }).toList();

              return Table(
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
                children: List.generate(snapshot.data!.docs.length, (index) {
                  final HappyHourModel happyHour = happyHours[index];
                  String businessAddress = happyHour.businessAddress ?? '';
                  String city = businessAddress.split(',')[1].trim();

                  return TableRow(
                    decoration: const BoxDecoration(color: Colors.white),
                    children: [
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 10),
                          child: Text("${index + 1} "),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 10),
                          child: Text(happyHour.businessName ?? '',
                              style: TextStyles.smallBlackText),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 10),
                          child: Text(happyHour.businessAddress ?? '',
                              style: TextStyles.smallBlackText),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 10),
                          child: Text(
                              city,
                              style: TextStyles.smallBlackText),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 10),
                          child: Text('Lorem Ipsum',
                              style: TextStyles.smallBlackText),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 10),
                          child: Text('Lorem Ipsum',
                              style: TextStyles.smallBlackText),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 10),
                          child: Text(happyHour.phoneNumber ?? '',
                              style: TextStyles.smallBlackText),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 10),
                          child: ElevatedButtonW(
                            buttonText: 'Action',
                            height: 30,
                            width: 80,
                            onTap: () {
                              var docId = snapshot.data!.docs[index].id;
                              print(docId);

                              showDialog(
                                context: context,
                                builder: (context) {
                                  return activeHappyHourDetailDialogueW(
                                      docId, happyHourRef);
                                },
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  );
                }),
              );
            }),

        // Getting data from firebase of happy hour
      ],
    );
  }
}

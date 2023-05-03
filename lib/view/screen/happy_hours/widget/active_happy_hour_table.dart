import 'package:add_happy_hour_admin/view/screen/happy_hours/happy_hour_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
  final controller = Get.find<HappyHourController>();

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
        GetBuilder<HappyHourController>(builder: (controller) {
          return StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance
                  .collection('happyhours')
                  .where('businessName',
                      isGreaterThanOrEqualTo: controller
                          .searchActiveHappyHourController.text
                          .toString()
                          .toUpperCase())
                  .snapshots(),
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
                    5: FlexColumnWidth(0.22),
                    6: FlexColumnWidth(0.2),
                    7: FlexColumnWidth(0.2),
                  },
                  children: List.generate(snapshot.data!.docs.length, (index) {
                    final HappyHourModel happyHour = happyHours[index];
                    String businessAddress = happyHour.businessAddress ?? '';
                    String city = businessAddress.split(',')[1].trim();
                    var userId = happyHour.id ?? '';

                    if (controller.searchActiveHour.value.isEmpty) {
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
                              child:
                                  Text(city, style: TextStyles.smallBlackText),
                            ),
                          ),
                          userId.isNotEmpty
                              ? TableCell(
                                  child: StreamBuilder<DocumentSnapshot>(
                                      stream: FirebaseFirestore.instance
                                          .collection('users')
                                          .doc(userId)
                                          .snapshots(),
                                      builder: (context,
                                          AsyncSnapshot<DocumentSnapshot>
                                              snapshot) {
                                        if (snapshot.hasData &&
                                            snapshot.data != null) {
                                          return Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 5, vertical: 10),
                                            child: Text(
                                                snapshot.data!['username'] ??
                                                    '',
                                                style:
                                                    TextStyles.smallBlackText),
                                          );
                                        } else {
                                          return SizedBox
                                              .shrink(); // or any other widget you want to show when there's no data
                                        }
                                      }),
                                )
                              : Text('Name not found',
                                  style: TextStyles.smallBlackText),
                          userId.isNotEmpty
                              ? TableCell(
                                  child: StreamBuilder<DocumentSnapshot>(
                                      stream: FirebaseFirestore.instance
                                          .collection('users')
                                          .doc(userId)
                                          .snapshots(),
                                      builder: (context,
                                          AsyncSnapshot<DocumentSnapshot>
                                              snapshot) {
                                        if (snapshot.hasData &&
                                            snapshot.data != null) {
                                          return Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 5, vertical: 10),
                                            child: Text(
                                                snapshot.data!['email'] ?? '',
                                                style:
                                                    TextStyles.smallBlackText),
                                          );
                                        } else {
                                          return const SizedBox
                                              .shrink(); // or any other widget you want to show when there's no data
                                        }
                                      }),
                                )
                              : Text('No email ',
                                  style: TextStyles.smallBlackText),
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
                    }
                    if (happyHour.businessName
                        .toString()
                        .toLowerCase()
                        .startsWith(controller.searchActiveHour
                            .toString()
                            .toLowerCase())) {
                      return TableRow(
                        decoration: const BoxDecoration(color: Colors.white),
                        children: [
                          TableCell(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 2, vertical: 10),
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
                              child:
                                  Text(city, style: TextStyles.smallBlackText),
                            ),
                          ),
                          userId.isNotEmpty
                              ? TableCell(
                                  child: StreamBuilder<DocumentSnapshot>(
                                      stream: FirebaseFirestore.instance
                                          .collection('users')
                                          .doc(userId)
                                          .snapshots(),
                                      builder: (context,
                                          AsyncSnapshot<DocumentSnapshot>
                                              snapshot) {
                                        if (snapshot.hasData &&
                                            snapshot.data != null) {
                                          return Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 5, vertical: 10),
                                            child: Text(
                                                snapshot.data!['username'] ??
                                                    '',
                                                style:
                                                    TextStyles.smallBlackText),
                                          );
                                        } else {
                                          return SizedBox
                                              .shrink(); // or any other widget you want to show when there's no data
                                        }
                                      }),
                                )
                              : Text('Name not found',
                                  style: TextStyles.smallBlackText),
                          userId.isNotEmpty
                              ? TableCell(
                                  child: StreamBuilder<DocumentSnapshot>(
                                      stream: FirebaseFirestore.instance
                                          .collection('users')
                                          .doc(userId)
                                          .snapshots(),
                                      builder: (context,
                                          AsyncSnapshot<DocumentSnapshot>
                                              snapshot) {
                                        if (snapshot.hasData &&
                                            snapshot.data != null) {
                                          return Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 5, vertical: 10),
                                            child: Text(
                                                snapshot.data!['email'] ?? '',
                                                style:
                                                    TextStyles.smallBlackText),
                                          );
                                        } else {
                                          return const SizedBox
                                              .shrink(); // or any other widget you want to show when there's no data
                                        }
                                      }),
                                )
                              : Text('No email ',
                                  style: TextStyles.smallBlackText),
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
                    } else {
                      return const TableRow(
                        decoration: BoxDecoration(color: Colors.white),
                        children: [
                          TableCell(child: Text('')),
                          TableCell(child: Text('')),
                          TableCell(child: Text('')),
                          TableCell(child: Text('')),
                          TableCell(child: Text('')),
                          TableCell(child: Text('')),
                          TableCell(child: Text('')),
                          TableCell(child: Text('')),
                        ],
                      );
                    }
                  }),
                );
              });
        })
      ],
    );
  }
}

/*
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

            return DataTable(
              columnSpacing: 15,
              dataRowHeight: 50,
              columns: const [
                DataColumn(
                    label: SizedBox(
                      width: 50,
                        child: Text('No.',)) ,
                 ),
                DataColumn(label: SizedBox(
                  width: 100,


                    child: Text('Business Name'))),
                DataColumn(label: SizedBox(
                    width: 200,
                    child: Text('Address'))),
                DataColumn(label: SizedBox(width: 100 , child: Text('City'))),
                DataColumn(label: SizedBox(width: 120 ,child:  Text('Username'))),
                DataColumn(label: SizedBox(width: 200 , child: Text('Email'))),
                DataColumn(label: SizedBox(width: 120 , child: Text('Phone Number'))),
                DataColumn(label: SizedBox(width: 120 , child: Text('Action'))),
              ],
              rows: List.generate(snapshot.data!.docs.length, (index) {
                final HappyHourModel happyHour = happyHours[index];
                String businessAddress = happyHour.businessAddress ?? '';
                String city = businessAddress.split(',')[1].trim();
                var userId = happyHour.id ?? '';

                return DataRow(

                  color: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    return (index % 2 == 0)
                        ? Colors.white
                        : Colors.grey.withOpacity(0.3);
                  }),
                  cells: [
                    DataCell(SizedBox(width: 50, child: Text('${index + 1}'))),
                    DataCell(SizedBox(
                      width : 120,
                      child: Text(happyHour.businessName ?? '',
                          style: TextStyles.smallBlackText),
                    )),
                    DataCell(SizedBox(


                        child: Text(happyHour.businessAddress ?? '',
                            style: TextStyles.smallBlackText))),
                    DataCell(SizedBox(
                        width : 100,
                        child: Text(city, style: TextStyles.smallBlackText))),
                    userId.isNotEmpty
                        ? DataCell(
                            StreamBuilder<DocumentSnapshot>(
                              stream: FirebaseFirestore.instance
                                  .collection('users')
                                  .doc(userId)
                                  .snapshots(),
                              builder: (context,
                                  AsyncSnapshot<DocumentSnapshot> snapshot) {
                                if (snapshot.hasData && snapshot.data != null) {
                                  return SizedBox(
                                    width: 100,
                                    child: Text(snapshot.data!['username'] ?? '',
                                        style: TextStyles.smallBlackText),
                                  );
                                } else {
                                  return SizedBox.shrink();
                                }
                              },
                            ),
                          )
                        : DataCell(Text('Name not found',
                            style: TextStyles.smallBlackText)),
                    userId.isNotEmpty
                        ? DataCell(
                            StreamBuilder<DocumentSnapshot>(
                              stream: FirebaseFirestore.instance
                                  .collection('users')
                                  .doc(userId)
                                  .snapshots(),
                              builder: (context,
                                  AsyncSnapshot<DocumentSnapshot> snapshot) {
                                if (snapshot.hasData && snapshot.data != null) {
                                  return SizedBox(
                                    width: 180,
                                    child: Text(snapshot.data!['email'] ?? '',
                                        style: TextStyles.smallBlackText),
                                  );
                                } else {
                                  return SizedBox.shrink();
                                }
                              },
                            ),
                          )
                        : DataCell(
                            Text('No email', style: TextStyles.smallBlackText)),
                    DataCell(Text(happyHour.phoneNumber ?? '',
                        style: TextStyles.smallBlackText)),
                    DataCell(
                      SizedBox(
                        width:120,
                        child: ElevatedButtonW(
                          buttonText: 'Action',
                          height: 30,
                          width: 80,
                          onTap: () {
                            var docId = snapshot.data!.docs[index].id;

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
          },
        ),
 */

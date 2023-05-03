import 'package:add_happy_hour_admin/view/screen/users/user_controller.dart';
import 'package:add_happy_hour_admin/view/screen/users/widgets/suspend_user.dart';
 import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../../../core/data/model/user_model.dart';
import '../../../../core/utils/styles.dart';
import '../../../widgets/buttons.dart';
import 'package:get/get.dart';
 class AppUserW extends StatelessWidget {
    AppUserW({
    Key? key,
  }) : super(key: key);
  final CollectionReference usersRef =
  FirebaseFirestore.instance.collection('users');
  final controller = Get.find<UserController>();

   @override
  Widget build(BuildContext context) {
    return  GetBuilder<UserController>(
      builder: ( controller) {
        return StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance
                .collection('users')
                .where('username', isGreaterThanOrEqualTo: controller.searchUserController.text.toString().toUpperCase())

                .snapshots(),
            builder: (BuildContext context,AsyncSnapshot<QuerySnapshot> snapshot) {

              if(snapshot.hasError){
                return Text('Error: ${snapshot.error}');
              }
              if(snapshot.connectionState == ConnectionState.waiting){
                return const CircularProgressIndicator();
              }
              final List<UserModel> users = snapshot.data!.docs.map((DocumentSnapshot document) {
                return UserModel.fromSnapshot(document);
              }).toList();



              // if (controller.searchUserController.text.trim().isEmpty) {
              //   // If the search text is empty, show all users
              //   users.sort((a, b) => a.userName.compareTo(b.userName));
              // } else {
              //   // If the search text is not empty, show matching users first
              //   users.sort((a, b) => a.userName.startsWith(controller.searchUserController.text.trim()) ? -1 : 1);
              // }



              return ListView.builder(
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (context, index) {


                    final UserModel user = users[index];

                    if(controller.searchQuery.value.isEmpty){
                      return Table(
                        defaultVerticalAlignment: TableCellVerticalAlignment.middle,

                        border: const TableBorder(
                          // bottom: BorderSide(color: Colors.black, width: 1),
                          // borderRadius: BorderRadius.only(topRight: Radius.circular(60),topLeft: Radius.circular(15),),
                          //   horizontalInside: BorderSide(color: Colors.red, width: 2),
                        ),
                        columnWidths: const {
                          0: FlexColumnWidth(0.1),
                          1: FlexColumnWidth(0.15),
                          2: FlexColumnWidth(0.15),
                          3: FlexColumnWidth(0.15),
                          4: FlexColumnWidth(0.15),
                          5: FlexColumnWidth(0.15),
                          6: FlexColumnWidth(0.15),
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
                                      EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                                      child: Text(user.id, style: TextStyles.smallBlackText,),
                                    )),
                                TableCell(
                                    child: Padding(
                                      padding:
                                      EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                                      child: Text(user.userName ?? '', style: TextStyles.smallBlackText,),
                                    )),
                                TableCell(
                                    child: Padding(
                                      padding:
                                      EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                                      child: Text(user.isBusiness ? 'Business ' : "Standard  ", style: TextStyles.smallBlackText,),
                                    )),
                                TableCell(
                                    child: Padding(
                                      padding:
                                      EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                                      child: Text(user.email ?? '', style: TextStyles.smallBlackText,),
                                    )),
                                TableCell(
                                    child: Padding(
                                      padding:
                                      EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                                      child: Text(user.mobileNumber ?? '', style: TextStyles.smallBlackText,),
                                    )),
                                TableCell(
                                    child: Padding(
                                      padding:
                                      const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                                      child: FutureBuilder(
                                          future:Get.find<UserController>().getHappyHourCount(user.id),
                                          builder: (context, snapshot) {
                                            final numHappyHours = snapshot.data ?? 0;

                                            return Text('$numHappyHours ', style: TextStyles.smallBlackText,);
                                          }
                                      ),
                                    )),

                                TableCell(
                                    child: Padding(
                                      padding:
                                      EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                                      child: ElevatedButtonW(
                                        buttonText: 'Action'
                                        ,height: 30,
                                        width: 80,
                                        onTap: (){
                                          showDialog(context: context,
                                              builder: (context){
                                                return suspendUserDialogueW(users[index].id ,usersRef);
                                              }
                                          );

                                          //controller.deleteUser("${controller.auth.currentUser}");
                                        },
                                      ),
                                    )),

                              ]),

                        ],
                      );
                    }
                    if(user.userName.toString().toLowerCase().startsWith(controller.searchQuery.toString().toLowerCase())){
                      return Table(
                        defaultVerticalAlignment: TableCellVerticalAlignment.middle,

                        border: const TableBorder(
                          // bottom: BorderSide(color: Colors.black, width: 1),
                          // borderRadius: BorderRadius.only(topRight: Radius.circular(60),topLeft: Radius.circular(15),),
                          //   horizontalInside: BorderSide(color: Colors.red, width: 2),
                        ),
                        columnWidths: const {
                          0: FlexColumnWidth(0.1),
                          1: FlexColumnWidth(0.15),
                          2: FlexColumnWidth(0.15),
                          3: FlexColumnWidth(0.15),
                          4: FlexColumnWidth(0.15),
                          5: FlexColumnWidth(0.15),
                          6: FlexColumnWidth(0.15),
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
                                      EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                                      child: Text(user.id, style: TextStyles.smallBlackText,),
                                    )),
                                TableCell(
                                    child: Padding(
                                      padding:
                                      EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                                      child: Text(user.userName ?? '', style: TextStyles.smallBlackText,),
                                    )),
                                TableCell(
                                    child: Padding(
                                      padding:
                                      EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                                      child: Text(user.isBusiness ? 'Business ' : "Standard  ", style: TextStyles.smallBlackText,),
                                    )),
                                TableCell(
                                    child: Padding(
                                      padding:
                                      EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                                      child: Text(user.email ?? '', style: TextStyles.smallBlackText,),
                                    )),
                                TableCell(
                                    child: Padding(
                                      padding:
                                      EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                                      child: Text(user.mobileNumber ?? '', style: TextStyles.smallBlackText,),
                                    )),
                                TableCell(
                                    child: Padding(
                                      padding:
                                      const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                                      child: FutureBuilder(
                                          future:Get.find<UserController>().getHappyHourCount(user.id),
                                          builder: (context, snapshot) {
                                            final numHappyHours = snapshot.data ?? 0;

                                            return Text('$numHappyHours ', style: TextStyles.smallBlackText,);
                                          }
                                      ),
                                    )),

                                TableCell(
                                    child: Padding(
                                      padding:
                                      EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                                      child: ElevatedButtonW(
                                        buttonText: 'Action'
                                        ,height: 30,
                                        width: 80,
                                        onTap: (){
                                          showDialog(context: context,
                                              builder: (context){
                                                return suspendUserDialogueW(users[index].id ,usersRef);
                                              }
                                          );

                                          //controller.deleteUser("${controller.auth.currentUser}");
                                        },
                                      ),
                                    )),

                              ]),

                        ],
                      );
                    }
                    else {
                      return Container();
                    }





                  }   );
            }
        );
      },

    );
  }
}

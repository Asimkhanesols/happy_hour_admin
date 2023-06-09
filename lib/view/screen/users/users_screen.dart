



import '../../../core/utils/export.dart';
import 'add_new_user.dart';

class UsersScreen extends StatelessWidget {
    UsersScreen({Key? key}) : super(key: key);

  final controller = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height,
      width: context.width,
      color: bgColor,
      child: ClipRect(
        child: Navigator(
          onGenerateRoute: (setting)=> MaterialPageRoute(

              builder: (context) => SingleChildScrollView(
                child:
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20 , top: 30),
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                const TopRow(),
                20.ph,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Users',style: TextStyles.boldBodyText,),
                    5.ph,
                    Text('You can see all the active happy hours here.',style: TextStyles.greyMostSmallBodyText, )
                  ],
                ),
                Row(
                  children: [
                    Text('Admin Panel Users',style: TextStyles.boldBodyText,),
                    const Spacer(),
                    ElevatedButtonW(buttonText: "Add new user" ,width: 120,height: 34,buttonRadius: 2,
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                  AddNewUserScreen()));
                      },

                    )
                  ],
                ),
                10.ph,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(),

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
                    )

                  ],
                ),
                20.ph,
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
                   5: FlexColumnWidth(0.4),


                 },
                 children: [
                   TableRow(
                       decoration:
                       const BoxDecoration(color: Colors.white),
                       children: [
                         TableCell(
                             child: Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Text('ID',style: TextStyles.tableText,),
                             )),
                         TableCell(
                             child: Text('User ID',style: TextStyles.tableText,)),
                         TableCell(
                             child: Text('Name',style: TextStyles.tableText,)),
                         TableCell(
                             child: Text('Email',style: TextStyles.tableText,)),
                         TableCell(
                             child: Text('Mobile Number',style: TextStyles.tableText,)),
                         TableCell(
                             child: Center(child: Text('Action',style: TextStyles.tableText,))),

                       ]),

                 ],
               ),

               StreamBuilder<QuerySnapshot>(
                 stream: FirebaseFirestore.instance.collection('admin').snapshots(),
                 builder: (context, AsyncSnapshot<QuerySnapshot>snapshot) {
                   if(snapshot.hasError){
                     return Text('Error: ${snapshot.error}');
                   }
                   if(snapshot.connectionState == ConnectionState.waiting){
                     return const CircularProgressIndicator();
                   }
                   final List<AdminModel> admins = snapshot.data!.docs.map((DocumentSnapshot document) {
                     return AdminModel.fromSnapshot(document);
                   }).toList();

                   return ListView.builder(
                       shrinkWrap: true,
                       physics: const ScrollPhysics(),
                       itemCount: snapshot.data!.docs.length,
                       itemBuilder: (context, index) {

                         final AdminModel admin = admins[index];
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
                               5: FlexColumnWidth(0.4),


                             },
                             children: [
                               TableRow(
                                   decoration:
                                   const BoxDecoration(color: Colors.white),
                                   children: [
                                     TableCell(
                                         child: Padding(
                                           padding:
                                           const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                                           child: Text("${index +1} "),
                                         )),
                                     TableCell(
                                         child: Padding(
                                           padding:
                                           const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                                           child: Text('${index +1}', style: TextStyles.smallBlackText,),
                                         )),
                                     TableCell(
                                         child: Padding(
                                           padding:
                                           const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                                           child: Text(admin.name, style: TextStyles.smallBlackText,),
                                         )),
                                     TableCell(
                                         child: Padding(
                                           padding:
                                           const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                                           child: Text(admin.email, style: TextStyles.smallBlackText,),
                                         )),
                                     TableCell(
                                         child: Padding(
                                           padding:
                                           const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                                           child: Text(admin.mobile, style: TextStyles.smallBlackText,),
                                         )),


                                     const TableCell(
                                         child: Center(child: ElevatedButtonW(buttonText: 'Action',height: 30,width: 120,))),

                                   ]),

                             ],
                           );
                       }   );
                 }
               ),
                30.ph,
                Row(
                  children: [
                    Text('App Users',style: TextStyles.boldBodyText,),
                    const Spacer(),
                    GetBuilder<UserController>(
                       builder: (controller) {
                        return SizedBox(
                          width: 240,
                          child: TextFormField(
                               controller: controller.searchUserController,
                            decoration: InputDecoration(
                                hintText: "Search here" , hintStyle: TextStyles.textFieldSmallHint,
                                suffixIcon: const Icon(Icons.search),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(2),
                                    borderSide: BorderSide.none
                                )
                            ),
                            onChanged: (value){
                              controller.updateSearchQuery(value);
                              controller.update();
                             },


                          ),
                        );
                      }
                    )
                  ],
                ),



                20.ph,

               Table(
                 defaultVerticalAlignment: TableCellVerticalAlignment.middle,

                 border: TableBorder(
                   bottom: BorderSide(color: Colors.grey.withOpacity(0.4), width: 1),
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
                               padding: const EdgeInsets.all(8.0),
                               child: Text('ID',style: TextStyles.tableText,),
                             )),
                         TableCell(
                             child: Text('User ID',style: TextStyles.tableText,)),
                         TableCell(
                             child: Text('Name',style: TextStyles.tableText,)),
                         TableCell(
                             child: Text('UserType',style: TextStyles.tableText,)),
                         TableCell(
                             child: Text('Email',style: TextStyles.tableText,)),
                         TableCell(
                             child: Text('Mobile Number',style: TextStyles.tableText,)),
                         TableCell(
                             child: Text('Happy Hour',style: TextStyles.tableText,)),
                          TableCell(
                             child: Center(child: Text('Action',style: TextStyles.tableText,))),

                       ]),

                 ],
               ),
                     //--------- App user table


                 GetBuilder<UserController>(
                    builder: (controller) {
                     return AppUserW();
                   }
                 ),
                20.ph,
                Row(
                  children: [
                    Column(
                      children: [
                        5.ph,
                        Text('Showing 1 of 3',style: TextStyles.smallBlackText, )
                      ],
                    ),
                    const Spacer(),
                    Text('Previous',style: TextStyles.smallBlackText, ),
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
              )),
        ),

      ),
    );
  }
}
















import '../../../core/utils/export.dart';
import '../../widgets/year_chart.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    return Scaffold(
      body: Container(
        height: context.height,
        width: context.width,
        padding: const EdgeInsets.only(left: 20, right: 20 , top: 30),
        color: bgColor,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Welcome Admin',style: TextStyles.h1?.copyWith(fontSize: 12,fontWeight: FontWeight.bold)),
                      5.ph,
                      Text('Hi, your analytics are all set',style: TextStyles.greyMostSmallBodyText, )
                    ],
                  ),
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
                          Text('Hello, Admin', style: TextStyles.h1?.copyWith(fontSize: 12,fontWeight: FontWeight.bold)),
                          5.ph,
                          Text('admin', style: TextStyles.greyMostSmallBodyText)
                        ],
                      ),
                    ],
                  )
                ],
              ) ,
              40.ph,

              Obx(() =>  Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  dashBoardItemWidget(
                      title: 'Total Happy hours',
                      number: "${controller.totalHappyHours}"

                  ),

                  dashBoardItemWidget(
                      title: 'Total Users',

                      number: "${controller.userCount}"

                  )
                  ,
                  dashBoardItemWidget(
                      title: 'Total Business Account ',
                      number: "${controller.businessAccount}"

                  ),
                  dashBoardItemWidget(
                      title: 'Total Happy hours Request',
                      number: "${controller.totalHappyHourRequest}"

                  ),
                  dashBoardItemWidget(
                      title: 'Total Standard Account',
                      number: "${controller.standardUsers}"

                  ),
                ],
              ))
             ,

              40.ph,
              Text("See your Statistics",textAlign: TextAlign.start , style: TextStyles.boldBodyText,),
              40.ph,
              Wrap(
                spacing: 40,
                children: [
                  Container(


                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(4),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: Offset(0, 1),
                        ),
                      ],
                    ),
                    child: HomeChartW(),
                  ),
                  Container(


                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(4),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: Offset(0, 1),
                        ),
                      ],
                    ),
                    child: const YearChartW(),
                  ),
                ],
              ),









            ],
          ),
        ),
      ),
    );
  }
}
Widget dashBoardItemWidget({String? title , String? number}){
  return Container(
    height:  150,
    width: 210,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(6),
      color: whiteColor,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 2,
          offset: const Offset(0, 1),
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        20.ph,
        Text(title! ,textAlign: TextAlign.center, style: TextStyles.boldBodyText?.copyWith(fontSize: 14),),
        20.ph,
        Text(number! ,style: TextStyles.primaryColorText?.copyWith(fontSize: 18 , fontWeight: FontWeight.bold) ),
        25.ph,
        Text("update Today", style: TextStyles.greyMostSmallBodyText)
      ],
    ),

  );
}
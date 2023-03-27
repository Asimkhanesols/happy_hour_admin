// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../core/utils/colors.dart';
import 'package:get/get.dart';

class HomeChartW extends StatelessWidget {
  const HomeChartW({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      width: Get.width * 0.3,

      child: SfCartesianChart(
      borderColor: Colors.transparent,


          plotAreaBorderWidth : 0.7,
        title: ChartTitle(borderColor: Colors.transparent,
          text: 'Weekly Happy Hour',
          textStyle: const TextStyle(fontWeight: FontWeight.bold),
        ),
        primaryXAxis: CategoryAxis(
          axisBorderType: AxisBorderType.withoutTopAndBottom
        ),
        primaryYAxis: NumericAxis(
          isVisible: false

        ),
        series: <ChartSeries>[
          ColumnSeries<UsersData, String>(
            color: primaryColor,
            dataSource: getColumnData(),
            xValueMapper: (UsersData users, _) => users.x,
            yValueMapper: (UsersData users, _) => users.y,

          ),
        ],
      ),
    );
  }
}

class UsersData {
  String x;
  double y;
  UsersData(this.x, this.y);
}

dynamic getColumnData() {
  List<UsersData> columndata = <UsersData>[
    UsersData('Monday', 20),
    UsersData('Tuesday', 40),
    UsersData('Wednesday', 60),
    UsersData('Thursday', 30),
    UsersData('Friday', 45),
    UsersData('Saturday', 40),
    UsersData('Sunday', 40),
  ];
  return columndata;
}

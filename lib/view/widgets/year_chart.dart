// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../core/utils/colors.dart';
import 'package:get/get.dart';

class YearChartW extends StatelessWidget {
  const YearChartW({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      width: Get.width * 0.35,

      child: SfCartesianChart(
        borderColor: Colors.transparent,


        plotAreaBorderWidth : 0.7,
        title: ChartTitle(borderColor: Colors.transparent,
          text: 'Yearly Happy Hour',
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
    UsersData('JAn', 20),
    UsersData('Feb', 40),
    UsersData('Mar', 60),
    UsersData('Apr', 30),
    UsersData('May', 45),
    UsersData('Jun', 30),
    UsersData('Jul', 20),
    UsersData('Aug', 40),
    UsersData('Sep', 40),
    UsersData('Oct', 60),
    UsersData('Nov', 30),
    UsersData('Dec', 80),

  ];
  return columndata;
}

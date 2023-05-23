// ignore_for_file: sized_box_for_whitespace



import 'package:syncfusion_flutter_charts/charts.dart';

import '../../core/utils/export.dart';

// ...

class HomeChartW extends StatelessWidget {
  const HomeChartW({super.key});

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final startOfLastWeek = now.subtract(Duration(days: now.weekday + 5));
    final endOfLastWeek = now;


    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance
          .collection('happyhours')
          .where('addHappyhourTime', isGreaterThanOrEqualTo: startOfLastWeek)
          .where('addHappyhourTime', isLessThan: endOfLastWeek)
          .snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Center(child: CircularProgressIndicator());
        }
        final data = List.generate(7, (index) => 0);
        for (final doc in snapshot.data!.docs) {
          final date = (doc['addHappyhourTime'] as Timestamp).toDate();
          final dayOfWeek = date.weekday - 1;
          data[dayOfWeek]++;
        }
        final columnData = [
          'Mon',
          'Tue',
          'Wed',
          'Thu',
          'Fri',
          'Sat',
          'Sun',
        ].asMap().entries.map((entry) => UsersData(entry.value, data[entry.key].toDouble())).toList();

        return Container(
          width: Get.width * 0.3,
          child: SfCartesianChart(
            borderColor: Colors.transparent,
            plotAreaBorderWidth: 0.7,
            title: ChartTitle(
              borderColor: Colors.transparent,
              text: 'Weekly Happy Hour',
              textStyle: const TextStyle(fontWeight: FontWeight.bold),
            ),
            primaryXAxis: CategoryAxis(axisBorderType: AxisBorderType.withoutTopAndBottom),
            primaryYAxis: NumericAxis(isVisible: false),
            series: <ChartSeries>[
              ColumnSeries<UsersData, String>(
                color: primaryColor,
                dataSource: columnData,
                xValueMapper: (UsersData users, _) => users.x,
                yValueMapper: (UsersData users, _) => users.y,
              ),
            ],
          ),
        );
      },
    );
  }
}

class UsersData {
  String x;
  double y;
  UsersData(this.x, this.y);
}


// dynamic getColumnData() {
//   List<UsersData> columndata = <UsersData>[
//     UsersData('Mon', 20),
//     UsersData('Tue', 40),
//     UsersData('Wed', 60),
//     UsersData('Thur', 30),
//     UsersData('Fri', 45),
//     UsersData('Sat', 40),
//     UsersData('Sun', 40),
//   ];
//   return columndata;
// }

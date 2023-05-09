import 'dart:io';

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pdfWidgets;
import 'package:path_provider/path_provider.dart';

import '../../../core/data/model/happy_hour_model.dart';


class HappyHourController extends GetxController{

  // options for drop down
  var selectRequest = 'Active happy hour'.obs;
  // option for request happy hour
  var selectActive = 'Happy hour request'.obs;



  var searchActiveHappyHourController = TextEditingController();

  // Declare a variable to store the search query
  var searchActiveHour = "".obs;

  // Declare a method to update the search query
  void searchActiveHourQuery(String query) {
    searchActiveHour.value = query;
    update();
  }



// pdf creation
  Future<void> generatePdf(List<HappyHourModel> happyHours) async {
    final pdf = pdfWidgets.Document();

    pdf.addPage(
      pdfWidgets.MultiPage(
        pageFormat: PdfPageFormat.a4,
        build: (context) => [
          pdfWidgets.Table.fromTextArray(
            context: context,
            data: [
              ['Index', 'Business Name', 'Business Address', 'City', 'Username', 'Email', 'Phone Number'],
              ...happyHours.map(
                    (happyHour) => [
                  happyHours.indexOf(happyHour) + 1,
                  happyHour.businessName ?? '',
                  happyHour.businessAddress ?? '',
                  happyHour.businessName ?? '',
                  happyHour.drinkSpecial ?? '',
                  happyHour.businessName ?? '',
                  happyHour.phoneNumber ?? '',
                ],
              ),
            ],
          ),
        ],
      ),
    );

    final file = await File('${(await getTemporaryDirectory()).path}/happy_hours.pdf').create();
    await file.writeAsBytes(await pdf.save());
    print('PDF generated at ${file.path}');
  }


}
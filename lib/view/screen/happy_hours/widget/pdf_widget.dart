import 'package:flutter_calahookah_app/import_packages.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

import 'free_product_controller.dart';

class PdfViewerScreen extends GetView<FreeProductController> {
  final String filePath;

  const PdfViewerScreen({Key? key, required this.filePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PDF Viewer'),
      ),
      body: PDFView(
        filePath: filePath,
        enableSwipe: true,
        swipeHorizontal: true,
        autoSpacing: false,
        pageFling: false,
        onRender: (_pages) {
          // ...
        },
        onError: (error) {
          print(error.toString());
        },
        onPageError: (page, error) {
          print('$page: ${error.toString()}');
        },
        onPageChanged: (int? page, int?  total) {
          print('page change: $page/$total');
        },
      ),
    );
  }
}

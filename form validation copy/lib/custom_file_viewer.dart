import 'dart:io';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class CustomFileViewer extends StatelessWidget {
  final File file;
  const CustomFileViewer({super.key,required this.file});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(file.path.split("/").last),
      ),
      body: SfPdfViewer.file(file),
    );
  }
}

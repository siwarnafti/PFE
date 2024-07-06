import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:pdf_viewer_plugin/pdf_viewer_plugin.dart';

class UploadCv extends StatefulWidget {
  const UploadCv({super.key});

  @override
  State<UploadCv> createState() => _UploadCvState();
}

class _UploadCvState extends State<UploadCv> {
  String? _filePath;

 

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () async {
            final result = await FilePicker.platform.pickFiles(
              
             
            );
            if(result!=null && result.files.single.path !=null)
            {
              PlatformFile file= result.files.first;

            }
          },
          child: Text('Select PDF'),
        ),
        SizedBox(height: 20),
        _filePath != null
            ? Expanded(
                child: PdfView(
                  path: _filePath!,
                ),
              )
            : Center(
                child: Text('No PDF selected'),
              ),
      ],
    );
  }
}

import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

class File_upload extends StatefulWidget {
  File_upload({Key? key}) : super(key: key);

  @override
  _File_uploadState createState() => _File_uploadState();
}

class _File_uploadState extends State<File_upload> {
  File? _file;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Upload document"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () async {
                FilePickerResult? result = await FilePicker.platform.pickFiles(
                  type: FileType.any,
                );
                if (result != null) {
                  final path = result.files.single.path!;
                  setState(() {
                    _file = File(path);
                  });
                }
              },
              child: Container(
                height: 250,
                width: 450,
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Icon(Icons.file_upload_outlined),
                    Center(child: Text("File Upload")),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () async {
                FilePickerResult? result = await FilePicker.platform.pickFiles(
                  type: FileType.custom,
                  allowedExtensions: ['jpg', 'pdf', 'doc'],
                );
                if (result != null) {
                  final path = result.files.single.path!;
                  setState(() {
                    _file = File(path);
                  });
                }
              },
              child: Container(
                height: 250,
                width: 450,
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Icon(Icons.file_upload_outlined),
                    Center(child: Text("File Upload")),
                  ],
                ),
              ),
            ),
          ), /*  */
        ],
      ),
    );
  }
}

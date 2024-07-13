import 'dart:io' show File;

import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_validation/assets.dart';
import 'package:form_validation/custom_file_viewer.dart';

class CustomFilePicker extends StatelessWidget {
  final String label;
  final String name;
  final FormFieldValidator<File>? validator;
  const CustomFilePicker({
    super.key,
    required this.label,
    required this.name,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          FormBuilderField<File>(
              name: name,
              validator: validator,
              builder: (FormFieldState<File> field) {
                return InputDecorator(
                    decoration: InputDecoration(
                      errorText: field.errorText,
                      border: InputBorder.none,
                      errorBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      focusedErrorBorder: InputBorder.none,
                      contentPadding: EdgeInsets.zero,
                    ),
                    child: InkWell(
                      onTap: () {
                        FilePicker.platform.pickFiles(
                            allowMultiple: false,
                            type: FileType.custom,
                            allowedExtensions: ["pdf"]).then((value) {
                          if (value != null && value.files.isNotEmpty) {
                            field.didChange(File(value.files.first.path!));
                          }
                        });
                      },
                      child: field.value != null
                          ? ListTile(
                              leading: Image.asset(
                                Assets.pdf,
                                height: 45,
                                width: 45,
                              ),
                              title: Text(field.value!.path.split("/").last),
                              contentPadding: EdgeInsets.zero,
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        CustomFileViewer(file: field.value!),
                                  ),
                                );
                              })
                          : DottedBorder(
                              color: Colors.grey,
                              dashPattern: [6, 4],
                              borderType: BorderType.RRect,
                              radius: Radius.circular(14),
                              child: Container(
                                width: double.infinity,
                                height: 110,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.file_copy,
                                      size: 14,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "Select the File",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                    ));
              }),
        ],
      ),
    );
  }
}

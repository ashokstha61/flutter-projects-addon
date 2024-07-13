import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_validation/custom_text_from.dart';
import 'package:form_validation/custom_file_picker.dart';

class CreateTodoScreen extends StatefulWidget {
  const CreateTodoScreen({super.key});

  @override
  State<CreateTodoScreen> createState() => _CreateTodoScreenState();
}

class _CreateTodoScreenState extends State<CreateTodoScreen> {
  final GlobalKey<FormBuilderState> _formkey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: FormBuilder(
          key: _formkey,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              CustomTextField(
                name: "Title",
                label: "Title",
                hintText: "Enter the title",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "title is empty";
                  } else {
                    return null;
                  }
                },
              ),
              CustomTextField(
                name: "Description",
                label: "Description",
                hintText: "Enter Description",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Description is empty";
                  } else if (value.length < 6) {
                    return "description must be atleast 6 character";
                  } else {
                    return null;
                  }
                },
              ),
              CustomFilePicker(
                label: "File",
                name: "file",
                validator: (value) {
                  if (value != null) {
                    return null;
                  } else {
                    return "Please upload pdf file";
                  }
                },
              ),
              TextButton(
                onPressed: () {
                  if (_formkey.currentState!.saveAndValidate()) {
                    print(_formkey.currentState!.value);
                  }
                },
                child: Text("Save"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

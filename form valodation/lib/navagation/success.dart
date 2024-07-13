import 'package:flutter/material.dart';
import 'package:form_validation/navagation/routes.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Success"),
      ),
      backgroundColor: Colors.brown,
      body: Center(
          child: TextButton(
        onPressed: () {
          Navigator.of(context)
              .popUntil((route) => route.settings.name == Routes.product);
        },
        child: Text("Back to dashboard "),
      )),
    );
  }
}

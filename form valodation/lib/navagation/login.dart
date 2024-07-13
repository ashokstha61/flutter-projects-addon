import 'package:flutter/material.dart';
import 'package:form_validation/navagation/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Login Page"),
      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
          child: TextButton(
        onPressed: () {
          Navigator.of(context)
              .pushNamedAndRemoveUntil(Routes.dashboard, (route) => false);
        },
        child: Text("login page to dashboard page"),
      )),
    );
  }
}

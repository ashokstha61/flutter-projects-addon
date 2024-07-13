import 'package:flutter/material.dart';

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
        onPressed: () {},
        child: Text("login page to dashboard page"),
      )),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:form_validation/navagation/routes.dart';

class OnboardPage extends StatelessWidget {
  const OnboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Onboard page"),
      ),
      backgroundColor: Colors.yellowAccent,
      body: Center(
          child: TextButton(
        onPressed: () {
          Navigator.of(context).pushNamed(Routes.login);
        },
        child: Text("onboard page to login page"),
      )),
    );
  }
}

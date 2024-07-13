import 'package:flutter/material.dart';

class OnboardPage extends StatelessWidget {
  final String title;
  const OnboardPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Onboard page"),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      backgroundColor: Colors.yellowAccent,
      body: Center(
          child: TextButton(
        onPressed: () {},
        child: Text("onboard page to login page"),
      )),
    );
  }
}

import 'package:flutter/material.dart';

class DashBoardPage extends StatelessWidget {
  const DashBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("DashBoard page"),
      ),
      backgroundColor: Colors.grey,
      body: Center(
          child: TextButton(
        onPressed: () {},
        child: Text("Dashboard"),
      )),
    );
  }
}
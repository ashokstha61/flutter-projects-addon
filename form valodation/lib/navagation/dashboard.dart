import 'package:flutter/material.dart';
import 'package:form_validation/navagation/routes.dart';

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
        onPressed: () {
          Navigator.of(context).pushNamed(Routes.product);
        },
        child: Text("Dashboard"),
      )),
    );
  }
}

import 'package:flutter/material.dart';

class InvalidScreenRoutes extends StatelessWidget {
  const InvalidScreenRoutes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(" Invalid routes"),
      ),
      body: Center(
          child: TextButton(
        onPressed: () {},
        child: Text("Invalid route"),
      )),
    );
  }
}

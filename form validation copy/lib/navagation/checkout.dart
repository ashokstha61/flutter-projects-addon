import 'package:flutter/material.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Checkout page"),
      ),
      backgroundColor: Colors.red,
      body: Center(
          child: TextButton(
        onPressed: () {},
        child: Text("Navigation bar"),
      )),
    );
  }
}
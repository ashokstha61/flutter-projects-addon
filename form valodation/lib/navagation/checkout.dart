import 'package:flutter/material.dart';
import 'package:form_validation/navagation/routes.dart';

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
        onPressed: () {
          Navigator.of(context).pushNamed(Routes.success);
        },
        child: Text("Checkout to success"),
      )),
    );
  }
}

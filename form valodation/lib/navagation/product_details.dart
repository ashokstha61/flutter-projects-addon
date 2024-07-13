import 'package:flutter/material.dart';
import 'package:form_validation/navagation/routes.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Product Details"),
      ),
      backgroundColor: Colors.yellow,
      body: Center(
          child: TextButton(
        onPressed: () {
          Navigator.of(context).pushNamed(Routes.checkout);
        },
        child: Text("Product details"),
      )),
    );
  }
}

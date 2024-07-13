import 'package:flutter/material.dart';

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
        onPressed: () {},
        child: Text("Product details"),
      )),
    );
  }
}
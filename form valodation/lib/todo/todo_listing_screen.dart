import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class TodoListingScreen extends StatelessWidget {
  const TodoListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(Faker().food.dish()),
          );
        },
        itemCount: 100,
      ),
    );
  }
}

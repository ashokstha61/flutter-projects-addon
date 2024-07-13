import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:form_validation/create_todo_screen.dart';
import 'package:form_validation/navagation/login.dart';
import 'package:form_validation/navagation/routes.dart';
// import 'package:form_validation/navagation/routes.dart';
import 'package:form_validation/todo/routes.dart';
import 'package:form_validation/todo/todo.dart';

class TodoListingScreen extends StatefulWidget {
  const TodoListingScreen({super.key});

  @override
  State<TodoListingScreen> createState() => _TodoListingScreenState();
}

class _TodoListingScreenState extends State<TodoListingScreen> {
  List<Todo> _todos = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Todo"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return CreateTodoScreen();
            },
          )).then((value) {
            if (value is Todo) {
              setState(() {
                _todos.insert(0, value);
              });
            }
          });
        },
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_todos[index].title),
            subtitle: Text(_todos[index].description),
          );
        },
        itemCount: _todos.length,
      ),
    );
  }
}

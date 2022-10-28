import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List students = [
    {'name': 'Dan Walker', 'address': 'Cagayan de Oro City'},
    {'name': 'Paul Walker', 'address': 'Butuan City'},
    {'name': 'Johnnie Walker', 'address': 'Bukidnon City'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Working with ListView Builder'),
      ),
      body: ListView.builder(
          itemCount: students.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(students[index]['name']),
              subtitle: Text(students[index]['address']),
            );
          }
      )
    );
  }
}

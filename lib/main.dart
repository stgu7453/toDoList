import 'package:flutter/material.dart';
import 'package:todoey/screens/task_screen.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskList>(
      builder: (context) => TaskList(),
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}


import 'package:co/models/task_data.dart';
import 'package:flutter/material.dart';
import 'package:co/Screens/TasksScreen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => taskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}

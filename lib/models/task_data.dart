import 'package:flutter/foundation.dart';
import 'package:co/models/task.dart';

// ignore: camel_case_types
class taskData extends ChangeNotifier
{
  List<Task> _tasks = [
    
  ];
   List<Task> get tasks{
    return _tasks;
  }
  int get taskCount
  {
    return _tasks.length;
  }
  void addtask(String newTaskTitle)
  {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }
  void updateTask(Task task)
  {
    task.toggleDone();
    notifyListeners();
  }
  void deleteTask(Task task)
  {
    _tasks.remove(task);
    notifyListeners();
  }
}
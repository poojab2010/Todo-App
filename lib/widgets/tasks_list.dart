import 'package:co/models/task.dart';
import 'package:co/models/task_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'task_tile.dart';


// ignore: camel_case_types
class tasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<taskData>(
      builder: (context,TaskData,child)
      {
        return ListView.builder(itemBuilder:(context,index)
        {
          return taskTile(
              taskTitle: TaskData.tasks[index].name,
              isChecked: TaskData.tasks[index].isdone,
              checkBoxcallBack:( checkboxState)
              {
               TaskData.updateTask(TaskData.tasks[index]);
              },
              longPressCallBack:()
              {
                TaskData.deleteTask(TaskData.tasks[index]);
              }
          );
        },
          itemCount: TaskData.taskCount,
        );
      }
    );
  }
}
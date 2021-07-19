import 'package:co/models/task_data.dart';
import 'package:flutter/material.dart';
import 'package:co/widgets/tasks_list.dart';
import 'add_tasks_screen.dart';
import 'package:co/models/task.dart';
import 'package:provider/provider.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        onPressed: (){
          showModalBottomSheet(context: context,isScrollControlled: true, builder: (context) => SingleChildScrollView(
              child: Container(
                  padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: addTasksScreen())));
        },
        child: Icon(
          Icons.add,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 60,bottom: 30,right: 30,left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(child: Icon(
                  Icons.list,
                  size: 30,
                  color: Colors.lightBlueAccent,
                ),
                backgroundColor: Colors.white,
                 radius: 30,
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Todoey',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.w700
                ),
                ),
                Text('${Provider.of<taskData>(context).taskCount} Tasks',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 18
                ),
                ),

              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 30),
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20)
                  ),
                ),
                child: tasksList(),
            ),
          ),
        ],
      ),
    );
  }
}





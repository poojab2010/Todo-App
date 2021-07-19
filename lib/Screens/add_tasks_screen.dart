import 'package:co/models/task.dart';
import 'package:co/models/task_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: camel_case_types
class addTasksScreen extends StatelessWidget {
  String newTaskTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
     child: Container(
       padding: EdgeInsets.all(20),
       ///we cannot use box decoration in the container of bottom sheet so we make another container
       decoration: BoxDecoration(
         borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
         color: Colors.white,
       ),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.stretch,
         children: <Widget>[
           Text('ADD TASK',
           textAlign: TextAlign.center,
           style: TextStyle(
             color: Colors.lightBlueAccent,
             fontSize: 30,
           ),
           ),
           TextField(
            autofocus: true,
             textAlign: TextAlign.center,
             onChanged: (newValue)
             {
               newTaskTitle=newValue;
             },
           ),
           FlatButton(
             onPressed: (){
              
               Provider.of<taskData>(context).addtask(newTaskTitle);
               Navigator.pop(context);
             },
             child: Text('Add',
               style: TextStyle(
                 color: Colors.white,
                 fontSize: 17,
               ),
             ),
           color: Colors.lightBlueAccent,
           )
         ],
       ),
     ),
    );
  }
}

import 'package:flutter/material.dart';

// ignore: camel_case_types
class taskTile extends StatelessWidget
{
  @override

  ///tasktileState is state object here
  final bool isChecked;
  final String taskTitle;
  final Function checkBoxcallBack;
  final Function longPressCallBack;

  taskTile({this.isChecked,this.taskTitle,this.checkBoxcallBack,this.longPressCallBack});


  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      title: Text(taskTitle,style: TextStyle(
        decoration: isChecked ? TextDecoration.lineThrough:null,
      ),),
      trailing: Checkbox(
            value: isChecked,
            activeColor: Colors.lightBlueAccent,
            onChanged: checkBoxcallBack,
      )
    );
  }
}




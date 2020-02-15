import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final Function Boxcheckcallback;
  final Function longpreessed;
  final bool isChecked;
  final String TaskName;

  TaskTile(
      this.TaskName, this.isChecked, this.Boxcheckcallback, this.longpreessed);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: longpreessed,
      child: ListTile(
        title: Text(
          TaskName,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: Boxcheckcallback,
        ),
      ),
    );
  }
}

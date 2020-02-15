import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/tasks_tile.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  const TasksList();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            Provider.of<Data>(context).listOfTasks[index].name,
            Provider.of<Data>(context).listOfTasks[index].isDone,
            (bool x) =>
                Provider.of<Data>(context, listen: false).toggletask(index),
            () => Provider.of<Data>(context, listen: false).deletetask(index));
      },
      itemCount: Provider.of<Data>(context, listen: false).listOfTasks.length,
    );
  }
}

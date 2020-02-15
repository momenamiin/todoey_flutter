import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function AddTask;
  const AddTaskScreen({this.AddTask});

  @override
  Widget build(BuildContext context) {
    final myController = TextEditingController();
    return Container(
      padding: EdgeInsets.all(30.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0), topLeft: Radius.circular(20.0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30.0),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            cursorColor: Colors.lightBlueAccent,
            controller: myController,
          ),
          SizedBox(
            height: 20.0,
          ),
          FlatButton(
            color: Colors.lightBlueAccent,
            child: Text(
              'ADD',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              if ((myController.text).isNotEmpty) {
                AddTask(myController.text);
              }
            },
          )
        ],
      ),
    );
  }
}

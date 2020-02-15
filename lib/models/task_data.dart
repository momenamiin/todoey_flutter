import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task.dart';

class Data with ChangeNotifier {
  List<Task> listOfTasks = [];

  void addTask({String Taskname}) {
    listOfTasks.add(Task(name: Taskname));
    notifyListeners();
  }

  void toggletask(int index) {
    listOfTasks[index].toggleDone();
    notifyListeners();
  }

  void deletetask(int index) {
    listOfTasks.removeAt(index);
    notifyListeners();
  }
}

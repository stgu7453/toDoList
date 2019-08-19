import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/models/task.dart';

class TaskList extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: "Buy Milk"),
    Task(name: "Buy eggs"),
    Task(name: "Buy bread"),
  ];

  int get taskCount {
    return tasks.length;
  }

  changeState(int index){
    tasks[index].toggleDone();
    notifyListeners();
  }

  addTask(String title){
    tasks.add(Task(name: title));
    notifyListeners();
  }
}
import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';
import 'dart:collection';

class TaskList extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: "Buy Milk"),
    Task(name: "Buy eggs"),
    Task(name: "Buy bread"),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  changeState(Task task){
    task.toggleDone();
    notifyListeners();
  }

  addTask(String title){
    _tasks.add(Task(name: title));
    notifyListeners();
  }

  deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }
}
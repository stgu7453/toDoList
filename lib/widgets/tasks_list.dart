import 'package:flutter/material.dart';
import 'package:todoey/widgets/tasks_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_list.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskList>(
      builder: (context, taskData, child){
        return ListView.builder(
          itemBuilder: (context, index){
            return TaskTile(
              title: taskData.tasks[index].name,
              isChecked: taskData.tasks[index].isDone,
              checkBoxCallback: (value){
                taskData.changeState(index);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}


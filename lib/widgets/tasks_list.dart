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
            final task = taskData.tasks[index];
            return TaskTile(
              title: task.name,
              isChecked: task.isDone,
              checkBoxCallback: (value){
                taskData.changeState(task);
              },
              longPressCallback: (){
                taskData.deleteTask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_list.dart';

class AddTaskScreen extends StatelessWidget {

  final TextEditingController taskTitleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, right: 40.0, left: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Center(
                child: Text(
                  "Add Task",
                  style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 30.0,
                  ),
                ),
              ),
              TextField(
                controller: taskTitleController,
                autofocus: true,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  focusColor: Colors.lightBlueAccent,
                ),
              ),
              SizedBox(height: 20.0,),
              FlatButton(
                  onPressed: (){
                    if(taskTitleController.text != ""){
                      Provider.of<TaskList>(context).addTask(taskTitleController.text);
                      Navigator.pop(context);
                    }
                  },
                  color: Colors.lightBlueAccent,
                  child: Text(
                    "Add",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

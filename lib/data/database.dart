import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  // reference the box
  final _myBox = Hive.box('mybox');

  //open app first time
  void createInitialData() {
    toDoList = [
      ["1st Task", false],
      ["2nd Task", false]
    ];
  }

  // load the data from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // update database
  void updateDatabase() {
    _myBox.put("TODOLIST", toDoList);
  }
}

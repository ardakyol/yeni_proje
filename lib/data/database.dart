import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List todoList = [];

  final _myBox = Hive.box('mybox');

  void createInitialData() {
    todoList = [
      ["Buy Milk", false],
      ["Buy Alcohol", false],
    ];
  }

  void loadData() {
    todoList = _myBox.get("TODOLIST");
  }

  void updateDataBase() {
    _myBox.put("TODOLIST", todoList);
  }
}

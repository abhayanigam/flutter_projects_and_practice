import 'package:hive/hive.dart';

class ToDoDataBase{
  List toDoList = [];

  final _myBox = Hive.box('mybox');

  // run this method if this is the 1st time ever opening this app
  void createInitialData() {
    toDoList = [
      ["Make Tutorial", true],
      ["Do Exercise", false],
    ];
  }

  // load the data from database
  void loadData(){
    toDoList = _myBox.get("TODOLIST");
  }

  // update the data from database
  void updateData(){
    _myBox.put("TODOLIST", toDoList);
  }
}
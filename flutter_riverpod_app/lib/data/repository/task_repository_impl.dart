import 'package:flutter_riverpod_app/domain/models/task_model.dart';

import '../../data/temp_database.dart';
import 'task_respository.dart';

class TaskRepositoryImpl extends TaskRepository {
  final TempDatabase _tempDatabase;
  TaskRepositoryImpl(this._tempDatabase);
  @override
  addTask(TaskModel task) {
    _tempDatabase.taskDB.add(task);
  }

  @override
  deleteTask(TaskModel task) {
    _tempDatabase.taskDB.remove(task);
  }

  @override
  updateTask(int id, bool value) {
    _tempDatabase.taskDB.forEach((element) {
      if (element.id == id) {
        element.completed = value;
        return;
      }
    });
  }

  @override
  List<TaskModel> getAllTask() {
    return _tempDatabase.taskDB;
  }
}

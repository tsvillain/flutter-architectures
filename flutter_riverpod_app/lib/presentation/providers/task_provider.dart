import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_app/data/repository/task_respository.dart';

import '../../domain/models/task_model.dart';

final taskProvider =
    ChangeNotifierProvider((ref) => TaskProvider(ref.read(taskRepository)));

class TaskProvider extends ChangeNotifier {
  TaskProvider(this._repository);

  final TaskRepository _repository;

  List<TaskModel> _taskList = [];
  List<TaskModel> get taskList => _taskList;

  getAllTask() {
    _taskList = _repository.getAllTask();
    notifyListeners();
  }

  addTask(String task) {
    TaskModel _newTask = TaskModel(
      DateTime.now().microsecondsSinceEpoch,
      task,
      false,
    );

    _repository.addTask(_newTask);
    getAllTask();
  }

  deleteTask(TaskModel task) {
    _repository.deleteTask(task);
    getAllTask();
  }

  updateTask(int id, bool value) {
    _repository.updateTask(id, value);
    getAllTask();
  }
}

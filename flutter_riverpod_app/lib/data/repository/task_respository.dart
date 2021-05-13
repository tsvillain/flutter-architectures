import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_app/domain/models/task_model.dart';

import '../../data/temp_database.dart';
import 'task_repository_impl.dart';

final taskRepository =
    Provider.autoDispose((ref) => TaskRepositoryImpl(ref.read(tempDatabase)));

abstract class TaskRepository {
  addTask(TaskModel task);
  updateTask(int id, bool value);
  deleteTask(TaskModel task);
  List<TaskModel> getAllTask();
}

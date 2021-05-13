import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/temp_database.dart';
import '../models/task_model.dart';
import 'task_repository_impl.dart';

final taskRepository =
    Provider.autoDispose((ref) => TaskRepositoryImpl(ref.read(tempDatabase)));

abstract class TaskRepository {
  addTask(TaskModel task);
  updateTask(int id, bool value);
  deleteTask(TaskModel task);
  List<TaskModel> getAllTask();
}

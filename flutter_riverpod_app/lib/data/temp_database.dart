import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/models/task_model.dart';

final tempDatabase = Provider.autoDispose((ref) => TempDatabase());

class TempDatabase {
  List<TaskModel> taskDB = [];
}

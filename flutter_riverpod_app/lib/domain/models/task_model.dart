class TaskModel {
  late int id;
  String? task;
  bool completed = false;
  TaskModel(this.id, this.task, this.completed);

  TaskModel.fromMap(Map<String, dynamic> map) {
    this.id = map['id'];
    this.task = map['task'];
    this.completed = map['completed'];
  }
}

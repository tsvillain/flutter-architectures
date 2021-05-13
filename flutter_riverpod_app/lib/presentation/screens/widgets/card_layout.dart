import 'package:flutter/material.dart';
import 'package:flutter_riverpod_app/domain/models/task_model.dart';
import 'package:flutter_riverpod_app/presentation/providers/task_provider.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CardLayout extends StatelessWidget {
  final TaskModel task;
  CardLayout(this.task);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 22, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      clipBehavior: Clip.antiAlias,
      child: Slidable(
        actionPane: SlidableBehindActionPane(),
        secondaryActions: [
          IconSlideAction(
            caption: 'Delete',
            color: Colors.red,
            icon: Icons.delete_rounded,
            onTap: () {
              context.read(taskProvider).deleteTask(task);
            },
          ),
        ],
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: ListTile(
            title: Text(
              '${task.task}',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                decoration: task.completed
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
              ),
            ),
            leading: Checkbox(
              value: task.completed,
              onChanged: (bool? value) {
                context.read(taskProvider).updateTask(task.id, value!);
              },
            ),
          ),
        ),
      ),
    );
  }
}

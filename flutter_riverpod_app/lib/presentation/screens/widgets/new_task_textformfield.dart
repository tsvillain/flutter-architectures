import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/task_provider.dart';

class NewTaskTextFormField extends StatelessWidget {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.elliptical(14, 14)),
      ),
      child: TextFormField(
        controller: _controller,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.add),
          hintText: 'Write a new task',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.elliptical(14, 14)),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        ),
        onFieldSubmitted: (String task) {
          context.read(taskProvider).addTask(task);
          _controller.clear();
        },
      ),
    );
  }
}

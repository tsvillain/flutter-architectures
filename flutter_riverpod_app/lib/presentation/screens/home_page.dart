import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/task_provider.dart';
import 'widgets/card_layout.dart';
import 'widgets/new_task_textformfield.dart';

class MyHomePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, watch) {
    final provider = watch(taskProvider);
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Todo'),
      ),
      body: Column(
        children: [
          Expanded(
            child: provider.taskList.length == 0
                ? Center(
                    child: Text('No Pending Task'),
                  )
                : ListView.builder(
                    itemCount: provider.taskList.length,
                    itemBuilder: (context, index) =>
                        CardLayout(provider.taskList[index]),
                  ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
            child: NewTaskTextFormField(),
          ),
        ],
      ),
    );
  }
}

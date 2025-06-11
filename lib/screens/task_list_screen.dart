import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/task_provider.dart';

class TaskListScreen extends StatelessWidget {
  const TaskListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tasks = Provider.of<TaskProvider>(context).tasks;

    return Scaffold(
      appBar: AppBar(title: const Text('Tarefas')),
      body: tasks.isEmpty
          ? const Center(child: Text('Nenhuma tarefa disponível'))
          : ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                final task = tasks[index];
                return ListTile(
                  title: Text(task.title),
                  subtitle: Text(task.description),
                  trailing: Checkbox(
                    value: task.done,
                    onChanged: (_) {
                      Provider.of<TaskProvider>(context, listen: false).toggleTaskDone(index);
                    },
                  ),
                );
              },
            ),
    );
  }
}
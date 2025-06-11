import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/task_provider.dart';
import '../models/task.dart';

class CreateTaskScreen extends StatelessWidget {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descController = TextEditingController();

  CreateTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Criar Tarefa')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: _titleController, decoration: const InputDecoration(labelText: 'Título')),
            TextField(controller: _descController, decoration: const InputDecoration(labelText: 'Descrição')),
            ElevatedButton(
              onPressed: () {
                final title = _titleController.text;
                final desc = _descController.text;
                if (title.isNotEmpty) {
                  Provider.of<TaskProvider>(context, listen: false).addTask(Task(title: title, description: desc));
                  Navigator.pushNamed(context, '/tasks');
                }
              },
              child: const Text('Adicionar'),
            ),
          ],
        ),
      ),
    );
  }
}
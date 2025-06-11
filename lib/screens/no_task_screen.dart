import 'package:flutter/material.dart';

class NoTaskScreen extends StatelessWidget {
  const NoTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Você ainda não tem nenhuma tarefa')),
    );
  }
}
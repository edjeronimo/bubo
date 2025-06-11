import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('OLÁ\nSou o Bubo e vou te ajudar com tarefas simples', textAlign: TextAlign.center),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/create'),
              child: const Text('Criar tarefa'),
            ),
            TextButton(
              onPressed: () => Navigator.pushNamed(context, '/tasks'),
              child: const Text('Ver tarefas'),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class ConfirmDoneScreen extends StatelessWidget {
  const ConfirmDoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.thumb_up, size: 100),
            const Text('Tarefa marcada como realizada!'),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/tasks'),
              child: const Text('Voltar'),
            ),
          ],
        ),
      ),
    );
  }
}
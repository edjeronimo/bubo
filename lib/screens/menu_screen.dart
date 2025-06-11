import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Menu')),
      body: ListView(
        children: List.generate(5, (index) => const ListTile(title: Text('Opção \${index + 1}'))),
      ),
    );
  }
}
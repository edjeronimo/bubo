import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/welcome_screen.dart';
import 'screens/create_task_screen.dart';
import 'screens/task_list_screen.dart';
import 'screens/confirm_done_screen.dart';
import 'screens/no_task_screen.dart';
import 'screens/menu_screen.dart';
import 'providers/task_provider.dart';

void main() => runApp(const TarefaApp());

class TarefaApp extends StatelessWidget {
  const TarefaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TaskProvider(),
      child: MaterialApp(
        title: 'Tarefas',
        theme: ThemeData.dark(),
        initialRoute: '/',
        routes: {
          '/': (context) => const WelcomeScreen(),
          '/create': (context) => CreateTaskScreen(),
          '/tasks': (context) => const TaskListScreen(),
          '/confirm': (context) => const ConfirmDoneScreen(),
          '/no-tasks': (context) => const NoTaskScreen(),
          '/menu': (context) => const MenuScreen(),
        },
      ),
    );
  }
}
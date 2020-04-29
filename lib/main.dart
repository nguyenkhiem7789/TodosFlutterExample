import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todos_flutter/providers/TodosModel.dart';
import 'package:todos_flutter/screens/home_screen.dart';

void main() => runApp(TodoApp());

class TodoApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => TodosModel(),
      child: MaterialApp(
        title: 'Todos',
        theme: ThemeData.dark(),
        home: HomeScreen(),
      ),
    );
  }

}

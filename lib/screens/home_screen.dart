
import 'package:flutter/material.dart';
import 'package:todos_flutter/screens/add_task_screen.dart';
import 'package:todos_flutter/tabs/all_tasks.dart';
import 'package:todos_flutter/tabs/completed_tasks.dart';
import 'package:todos_flutter/tabs/incomplete_tasks.dart';

class HomeScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }

}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {

  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todos'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => AddTaskScreen()
              ));
            },
          )
        ],
        bottom: TabBar(
          controller: controller,
          tabs: <Widget>[
            Tab(text: 'All'),
            Tab(text: 'Incomplete'),
            Tab(text: 'Complete')
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          AllTasksTab(),
          IncompleteTasksTab(),
          CompleteTasksTab()
        ],
      ),
    );
  }

}
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:todos_flutter/providers/TodosModel.dart';
import 'package:todos_flutter/widgets/task_list.dart';

class CompleteTasksTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Consumer<TodosModel>(
        builder: (context, todos, child) => TaskList(
          tasks: todos.completedTasks,
        ),
      ),
    );
  }

}
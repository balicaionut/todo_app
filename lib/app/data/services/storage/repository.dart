import 'package:todo_app/app/data/modules/task.dart';
import 'package:todo_app/app/data/providers/task/provider.dart';

class TaskRepository {
  TaskProvider taskProvider;
  TaskRepository({required this.taskProvider});

  List<Task> readTasks() => taskProvider.readTasks();
  void writeTasks(List<Task> tasks) => taskProvider.writeTask(tasks);
}

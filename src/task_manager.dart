import 'db/database_manager.dart';
import 'parser/task_parser.dart';

class TaskManager {
  const TaskManager({required this.taskParser, required this.dbManager});

  final TaskParser taskParser;
  final DatabaseManager dbManager;

  void execute(String value) async {
    final tasks = taskParser.parse(value);

    await dbManager.saveTask(tasks);

    final allTasks = await dbManager.getAllTask();

    for (final task in allTasks) {
      print(
        '${task.runtimeType} -> Title: ${task.title} -  Description: ${task.description}',
      );
    }
  }
}

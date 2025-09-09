import 'dart:developer';

import 'package:task_parser/src/db/database_manager.dart';
import 'package:task_parser/src/parser/task_parser.dart';

class TaskParserManager {
  const TaskParserManager({required this.taskParser, required this.dbManager});

  final TaskParser taskParser;
  final DatabaseManager dbManager;

  void execute(String value) async {
    final results = taskParser.parse(value);

    results.fold(
      (error) {
        log(error.toString());
      },
      (tasks) async {
        await dbManager.saveTask(tasks);

        final allTasks = await dbManager.getAllTask();

        for (final task in allTasks) {
          print(
            '${task.runtimeType} -> Title: ${task.title} -  Description: ${task.description}',
          );
        }
      },
    );
  }
}

import 'db/sqlite_database_manager.dart';
import 'parser/json_task_parser.dart';

void main() async {
  final jsonInput = '''
[
  {"title" : "Sample Programming task", "description" : "Create E-Commerce client", "platforms" : "WEB", "language" :"JavaScript", "type" : "Programming"},
  {"title" : "Sample Math task", "description" : "Solve the calculus", "field" : "Calculus", "type" : "Mathematics"},
  {"title" : "Sample Graphic Design task", "description" : "UX design for E-commerce", "platforms" : "WEB", "output" : "Figma", "type" : "Graphics_Design"}
]
''';

  final taskParser = JsonTaskParser();
  final tasks = taskParser.parse(jsonInput);

  final dbManager = SQLiteDatabaseManager();
  await dbManager.saveTask(tasks);

  final allTasks = await dbManager.getAllTask();
  for (final task in allTasks) {
    print(
      '${task.runtimeType} -> Title: ${task.title} -  Description: ${task.description}',
    );
  }
}

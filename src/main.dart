import 'db/sqlite_database_manager.dart';
import 'parser/json_task_parser.dart';
import 'task_execution.dart';

void main() {
  final jsonInput = '''
[
  {"title" : "Sample Programming task", "description" : "Create E-Commerce client", "platforms" : "WEB", "language" :"JavaScript", "type" : "Programming"},
  {"title" : "Sample Math task", "description" : "Solve the calculus", "field" : "Calculus", "type" : "Mathematics"},
  {"title" : "Sample Graphic Design task", "description" : "UX design for E-commerce", "platforms" : "WEB", "output" : "Figma", "type" : "Graphics_Design"}
]
''';

  final taskParser = JsonTaskParser();
  final dbManager = SQLiteDatabaseManager();

  final taskExecution = TaskExecution(
    taskParser: taskParser,
    dbManager: dbManager,
  );

  taskExecution.execute(jsonInput);
}

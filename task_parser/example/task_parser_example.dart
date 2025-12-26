import 'package:task_parser/task_parser.dart';

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

  final taskParserManager = TaskParserManager(
    taskParser: taskParser,
    dbManager: dbManager,
  );

  taskParserManager.execute(jsonInput);
}

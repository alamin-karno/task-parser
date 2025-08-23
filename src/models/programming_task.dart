import 'task.dart';

class ProgrammingTask extends Task {
  ProgrammingTask({
    required super.title,
    required super.description,
    required this.platform,
    required this.language,
  });

  final String platform;
  final String language;
}

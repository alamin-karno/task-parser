import 'task_model.dart';

class ProgrammingTaskModel extends TaskModel {
  ProgrammingTaskModel({
    required super.title,
    required super.description,
    required this.platform,
    required this.language,
  });

  final String platform;
  final String language;
}

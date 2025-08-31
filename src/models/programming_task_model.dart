import 'task_model.dart';

class ProgrammingTaskModel extends TaskModel {
  ProgrammingTaskModel({
    required super.title,
    required super.description,
    required this.platforms,
    required this.language,
  });

  final String platforms;
  final String language;

  factory ProgrammingTaskModel.fromMap(Map<String, dynamic> map) {
    return ProgrammingTaskModel(
      title: map['title'],
      description: map['description'],
      platforms: map['platforms'],
      language: map['language'],
    );
  }
}

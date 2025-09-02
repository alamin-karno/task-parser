import 'task_model.dart';

class ProgrammingTaskModel extends TaskModel {
  ProgrammingTaskModel({
    required super.title,
    required super.description,
    super.createdAt,
    super.updatedAt,
    required this.platforms,
    required this.language,
  });

  final String platforms;
  final String language;

  factory ProgrammingTaskModel.fromMap(Map<String, dynamic> map) {
    return ProgrammingTaskModel(
      title: map['title'],
      description: map['description'],
      createdAt: map['createdAt'] != null
          ? DateTime(map['createdAt'])
          : DateTime.now(),
      updatedAt: map['updatedAt'] != null
          ? DateTime(map['updatedAt'])
          : DateTime.now(),
      platforms: map['platforms'],
      language: map['language'],
    );
  }
}

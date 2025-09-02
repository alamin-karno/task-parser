import 'task_model.dart';

class GraphicsDesignTaskModel extends TaskModel {
  GraphicsDesignTaskModel({
    required super.title,
    required super.description,
    super.createdAt,
    super.updatedAt,
    required this.platforms,
    required this.output,
  });

  final String platforms;
  final String output;

  factory GraphicsDesignTaskModel.fromMap(Map<String, dynamic> map) {
    return GraphicsDesignTaskModel(
      title: map['title'],
      description: map['description'],
      createdAt: map['createdAt'] != null
          ? DateTime(map['createdAt'])
          : DateTime.now(),
      updatedAt: map['updatedAt'] != null
          ? DateTime(map['updatedAt'])
          : DateTime.now(),
      platforms: map['platforms'],
      output: map['output'],
    );
  }
}

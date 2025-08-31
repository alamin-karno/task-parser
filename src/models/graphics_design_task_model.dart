import 'task_model.dart';

class GraphicsDesignTaskModel extends TaskModel {
  GraphicsDesignTaskModel({
    required super.title,
    required super.description,
    required this.platforms,
    required this.output,
  });

  final String platforms;
  final String output;

  factory GraphicsDesignTaskModel.fromMap(Map<String, dynamic> map) {
    return GraphicsDesignTaskModel(
      title: map['title'],
      description: map['description'],
      platforms: map['platforms'],
      output: map['output'],
    );
  }
}

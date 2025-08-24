import 'task_model.dart';

class GraphicsDesignTaskModel extends TaskModel {
  GraphicsDesignTaskModel({
    required super.title,
    required super.description,
    required this.platform,
    required this.output,
  });

  final String platform;
  final String output;
}

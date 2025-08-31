import 'graphics_design_task_model.dart';
import 'mathematics_task_model.dart';
import 'programming_task_model.dart';

class TaskModel {
  TaskModel({required this.title, required this.description})
    : createdAt = DateTime.now(),
      updatedAt = DateTime.now();

  final String title;
  final String description;
  final DateTime createdAt;
  final DateTime updatedAt;

  factory TaskModel.fromMap(Map<String, dynamic> map) {
    switch (map['type']) {
      case 'Mathematics':
        return MathematicsTaskModel.fromMap(map);
      case 'Programming':
        return ProgrammingTaskModel.fromMap(map);
      case 'Graphics_Design':
        return GraphicsDesignTaskModel.fromMap(map);
      default:
        throw Exception('Unknown Task Type.');
    }
  }
}

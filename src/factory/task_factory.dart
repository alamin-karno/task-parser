import '../models/graphics_design_task_model.dart';
import '../models/mathematics_task_model.dart';
import '../models/programming_task_model.dart';
import '../models/task_model.dart';

class TaskFactory {
  static TaskModel fromMap(Map<String, dynamic> map) {
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

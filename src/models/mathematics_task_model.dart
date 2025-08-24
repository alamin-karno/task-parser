import 'task_model.dart';

class MathematicsTaskModel extends TaskModel {
  MathematicsTaskModel({
    required super.title,
    required super.description,
    required this.field,
  });

  final String field;
}

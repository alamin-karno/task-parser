import 'task_model.dart';

class MathematicsTaskModel extends TaskModel {
  MathematicsTaskModel({
    required super.title,
    required super.description,
    required this.field,
  });

  final String field;

  factory MathematicsTaskModel.fromMap(Map<String, dynamic> map) {
    return MathematicsTaskModel(
      title: map['title'],
      description: map['description'],
      field: map['field'],
    );
  }
}

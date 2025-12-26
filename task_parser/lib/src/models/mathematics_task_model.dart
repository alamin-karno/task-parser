import 'task_model.dart';

class MathematicsTaskModel extends TaskModel {
  MathematicsTaskModel({
    required super.title,
    required super.description,
    super.createdAt,
    super.updatedAt,
    required this.field,
  });

  final String field;

  factory MathematicsTaskModel.fromMap(Map<String, dynamic> map) {
    return MathematicsTaskModel(
      title: map['title'],
      description: map['description'],
      createdAt: map['createdAt'] != null ? DateTime(map['createdAt']) : null,
      updatedAt: map['updatedAt'] != null ? DateTime(map['updatedAt']) : null,
      field: map['field'],
    );
  }
}

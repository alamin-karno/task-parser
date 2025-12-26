abstract class TaskModel {
  const TaskModel({
    required this.title,
    required this.description,
    this.createdAt,
    this.updatedAt,
  });

  final String title;
  final String description;
  final DateTime? createdAt;
  final DateTime? updatedAt;
}

abstract class TaskModel {
  const TaskModel({
    required this.title,
    required this.description,
    required this.createdAt,
    required this.updatedAt,
  });

  final String title;
  final String description;
  final DateTime createdAt;
  final DateTime updatedAt;
}

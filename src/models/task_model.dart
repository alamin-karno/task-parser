class TaskModel {
  TaskModel({
    required this.title,
    required this.description,
  })  : createdAt = DateTime.now(),
        updatedAt = DateTime.now();

  final String title;
  final String description;
  final DateTime createdAt;
  final DateTime updatedAt;
}

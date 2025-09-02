import '../models/task_model.dart';

abstract class DatabaseManager {
  Future<void> saveTask(List<TaskModel> tasks);

  Future<List<TaskModel>> getAllTask();
}

import '../../../../src/models/task_model.dart';

abstract interface class DatabaseManager {
  Future<void> saveTask(List<TaskModel> tasks);

  Future<List<TaskModel>> getAllTask();
}

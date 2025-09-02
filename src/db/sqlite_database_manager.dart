import '../models/task_model.dart';
import 'database_manager.dart';

class SQLiteDatabaseManager extends DatabaseManager {
  List<TaskModel> _tasks = [];

  @override
  Future<void> saveTask(List<TaskModel> tasks) async {
    _tasks = tasks;
  }

  @override
  Future<List<TaskModel>> getAllTask() async {
    return _tasks;
  }
}

import '../models/task_model.dart';

abstract interface class TaskParser {
  List<TaskModel> parse(String value);
}

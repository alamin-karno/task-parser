import '../models/task_model.dart';

abstract class TaskParser {
  List<TaskModel> parse(String value);
}

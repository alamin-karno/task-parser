import 'package:dartz/dartz.dart';

import '../models/task_model.dart';

abstract interface class TaskParser {
  Either<Exception, List<TaskModel>> parse(String value);
}

import 'package:dartz/dartz.dart';

import '../models/task_model.dart';
import 'task_parser.dart';

class CsvTaskParser implements TaskParser {
  @override
  Either<Exception, List<TaskModel>> parse(String value) {
    // TODO: implement parse
    return Right([]);
  }
}

import 'dart:convert';

import '../factory/task_factory.dart';
import '../models/task_model.dart';
import 'task_parser.dart';

class JsonTaskParser implements TaskParser {
  @override
  List<TaskModel> parse(String value) {
    final List<dynamic> data = json.decode(value);
    return data.map((e) => TaskFactory.fromMap(e)).toList();
  }
}

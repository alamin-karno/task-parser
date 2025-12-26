import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';

import 'task_factory.dart';
import '../models/task_model.dart';
import 'task_parser.dart';

class JsonTaskParser implements TaskParser {
  @override
  Either<Exception, List<TaskModel>> parse(String value) {
    try {
      final List<dynamic> data = json.decode(value);

      final tasks = data.map((e) => TaskFactory.fromMap(e)).toList();

      return Right(tasks);
    } catch (e) {
      log('Failed to parse JSON: $e');
      return Left(Exception(e.toString()));
    }
  }
}

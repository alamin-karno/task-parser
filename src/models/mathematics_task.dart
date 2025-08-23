import 'task.dart';

class MathematicsTask extends Task {
  MathematicsTask({
    required super.title,
    required super.description,
    required this.field,
  });

  final String field;
}

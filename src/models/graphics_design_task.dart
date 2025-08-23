import 'task.dart';

class GraphicsDesignTask extends Task {
  GraphicsDesignTask({
    required super.title,
    required super.description,
    required this.platform,
    required this.output,
  });

  final String platform;
  final String output;
}

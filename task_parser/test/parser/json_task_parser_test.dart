import 'package:task_parser/src/models/programming_task_model.dart';
import 'package:task_parser/task_parser.dart';
import 'package:test/test.dart';

void main() {
  group('JsonTaskParser', () {
    late JsonTaskParser parser;

    setUp(() {
      parser = JsonTaskParser();
    });

    test('parses valid JSON into TaskModel list', () {
      final jsonInput = '''
              [
                {"title" : "Sample Programming task", "description" : "Create E-Commerce client", "platforms" : "WEB", "language" :"JavaScript", "type" : "Programming"},
                {"title" : "Sample Math task", "description" : "Solve the calculus", "field" : "Calculus", "type" : "Mathematics"},
                {"title" : "Sample Graphic Design task", "description" : "UX design for E-commerce", "platforms" : "WEB", "output" : "Figma", "type" : "Graphics_Design"}
              ]
              ''';

      final result = parser.parse(jsonInput);

      expect(result.isRight(), true);

      result.fold((l) => fail('Parsing failed: ${l.toString()}'), (tasks) {
        expect(tasks.length, 3);
        expect(tasks[0].title, 'Sample Programming task');
        expect(tasks[0].description, 'Create E-Commerce client');
        expect(tasks[0].createdAt, null);
        expect(tasks[0].updatedAt, null);
        expect(tasks[0].runtimeType.toString(), 'ProgrammingTaskModel');
        expect((tasks[0] as ProgrammingTaskModel).platforms, 'WEB');
      });
    });

    test('Throws an exception for invalid JSON', () {
      final invalidJSON = 'invalid JSON';

      final result = parser.parse(invalidJSON);

      expect(result.isLeft(), true);

      result.fold(
        (l) => expect(l, isA<Exception>()),
        (r) => fail('Expected parsing to fail but it succeeded'),
      );
    });

    test('Throws an exception for invalid task type', () {
      final invalidTypeJSON = '''
              [
                {"title" : "Sample Programming task", "description" : "Create E-Commerce client", "platforms" : "WEB", "language" :"JavaScript", "type" : "Coding"},
              ]
              ''';

      final result = parser.parse(invalidTypeJSON);

      expect(result.isLeft(), true);

      result.fold(
        (l) => expect(l, isA<Exception>()),
        (r) => fail('Expected parsing to fail but it succeeded'),
      );
    });
  });
}

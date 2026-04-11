import 'package:flutter_test/flutter_test.dart';
import 'package:testing/counter.dart';

void main() {
  group('Counter', () {
    test('increments', () {
      final counter = Counter();
      expect(counter.counter, 0);
      counter.increment();
      expect(counter.counter, 1);
    });

    test('decrements', () {
      final counter = Counter();
      expect(counter.counter, 0);
      counter.decrement();
      expect(counter.counter, -1);
    });
  });
}

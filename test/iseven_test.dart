import 'package:flutter_test/flutter_test.dart';
import 'package:testing/iseven.dart';

void main() {
  group('iseven', () {
    test('returns true for even numbers', () {
      expect(iseven.isEven(2), true);
      expect(iseven.isEven(4), true);
      expect(iseven.isEven(6), true);
    });

    test('returns false for odd numbers', () {
      expect(iseven.isEven(1), false);
      expect(iseven.isEven(3), false);
      expect(iseven.isEven(5), false);
    });
  });
}

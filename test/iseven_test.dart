import 'package:flutter_test/flutter_test.dart';
import 'package:testing/iseven.dart';

void main() {
  group('iseven', () {
    test('returns true for even numbers', () {
      expect(IsEven.isEven(2), true);
      expect(IsEven.isEven(4), true);
      expect(IsEven.isEven(6), true);
    });

    test('returns false for odd numbers', () {
      expect(IsEven.isEven(1), false);
      expect(IsEven.isEven(3), false);
      expect(IsEven.isEven(5), false);
    });
  });
}

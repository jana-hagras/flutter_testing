import 'package:flutter_test/flutter_test.dart';
import 'package:testing/auth_services.dart';

void main() {
  final service = AuthServices();
  test('Email validation', () {
    expect(service.isValidEmail('test@example.com'), true);
    expect(service.isValidEmail('testexample.com'), false);
  });
}

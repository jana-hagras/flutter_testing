import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing/login_form.dart';

void main() {
  testWidgets('Login shows loading indicator after tap', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(body: LoginForm()),
      ),
    );

    expect(find.byKey(const Key('email')), findsOneWidget);
    expect(find.byKey(const Key('password')), findsOneWidget);
    expect(find.byKey(const Key('login')), findsOneWidget);

    await tester.tap(find.byKey(const Key('login')));
    await tester.pump();

    expect(find.byKey(const Key('loading_indicator')), findsOneWidget);

    expect(find.byKey(const Key('email')), findsNothing);
    expect(find.byKey(const Key('password')), findsNothing);
    expect(find.byKey(const Key('login')), findsNothing);
  });
}
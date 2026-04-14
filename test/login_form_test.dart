import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing/login_form.dart';

void main() {
  testWidgets('LoginForm has email and password fields and a login button',
      (WidgetTester tester) async {
    await tester
        .pumpWidget(const MaterialApp(home: Scaffold(body: LoginForm())));

    final emailField = find.byKey(const Key('email'));
    final passwordField = find.byKey(const Key('password'));
    final loginButton = find.byKey(const Key('login'));

    expect(emailField, findsOneWidget);
    expect(passwordField, findsOneWidget);
    expect(loginButton, findsOneWidget);

    // when clicked on a button, it changes the text of the button to "Logging in..."
    await tester.tap(loginButton);
    await tester.pump();
    expect(find.text('Logging in...'), findsOneWidget);
    expect(find.byKey(const Key('email')), findsNothing);
    expect(find.byKey(const Key('password')), findsNothing);
  });
}

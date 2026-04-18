import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing/hello_button.dart';

void main() {
  testWidgets('SimpleWidget updates text from Hello to Welcome on button tap',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: SimpleWidget()));

    expect(find.text('Hello'), findsOneWidget);
    expect(find.text('Welcome'), findsNothing);

    await tester.tap(find.text('Change'));

    await tester.pump();

    expect(find.text('Hello'), findsNothing);
    expect(find.text('Welcome'), findsOneWidget);
  });
}

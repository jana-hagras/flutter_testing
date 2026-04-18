import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:testing/main.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Tapping on floating action button updates counter',
      (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text("0"), findsOneWidget);
    expect(find.text("1"), findsNothing);
    await tester.tap(find.byKey(const Key('increment')));
    await tester.pumpAndSettle();
    expect(find.text("0"), findsNothing);
    expect(find.text("1"), findsOneWidget);
  });
}

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:testing/fetch_album.dart';
import 'package:testing/fetch_album_screen.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets(
    'Fetch album from API successfully',
    (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: FetchAlbumScreen(
          fetchAlbumOverride: () async =>
              Album(userId: 1, id: 1, title: 'Mocked Album Integration'),
        ),
      ));

      await tester.pumpAndSettle();

      expect(find.text('Album ID: 1'), findsOneWidget);
      expect(find.text('User ID: 1'), findsOneWidget);
      expect(find.text('Mocked Album Integration'), findsOneWidget);
    },
    timeout: const Timeout(Duration(seconds: 30)),
  );
}

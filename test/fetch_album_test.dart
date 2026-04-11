import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:http/http.dart' as http;
import 'package:testing/fetch_album.dart';

class MockClient extends Mock implements http.Client {}

void main() {
  test('returns an Album if the http call completes successfully', () async {
    final client = MockClient();

    when(() => client.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1')))
        .thenAnswer((_) async => http.Response('{"userId": 1, "id": 1, "title": "Test Album"}', 200));

    expect(await fetchAlbum(client), isA<Album>());
  });

  test('throws an exception if the http call completes with an error', () async {
    final client = MockClient();

    when(() => client.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1')))
        .thenAnswer((_) async => http.Response('Not Found', 404));

    expect(fetchAlbum(client), throwsException);
  });
}
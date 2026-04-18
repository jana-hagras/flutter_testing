import 'package:http/http.dart' as http;
import 'dart:convert';

Future<Album> fetchAlbum(http.Client client, {String url = 'https://jsonplaceholder.typicode.com/albums/1'}) async {
  final response = await client.get(
    Uri.parse(url),
  );

  if (response.statusCode == 200) {
    return Album.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    throw Exception('Failed to load albums');
  }
}

class Album {
  final int userId;
  final int id;
  final String title;

  Album({required this.userId, required this.id, required this.title});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      userId: json['userId'] as int,
      id: json['id'] as int,
      title: json['title'] as String,
    );
  }
}

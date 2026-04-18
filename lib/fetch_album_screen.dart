import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'fetch_album.dart';

class FetchAlbumScreen extends StatefulWidget {
  final Future<Album> Function()? fetchAlbumOverride;
  const FetchAlbumScreen({super.key, this.fetchAlbumOverride});

  @override
  State<FetchAlbumScreen> createState() => _FetchAlbumScreenState();
}

class _FetchAlbumScreenState extends State<FetchAlbumScreen> {
  late Future<Album> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = widget.fetchAlbumOverride?.call() ?? fetchAlbum(http.Client());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fetch Album'),
        centerTitle: true,
      ),
      body: Center(
        child: FutureBuilder<Album>(
          future: futureAlbum,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final album = snapshot.data!;
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Album ID: ${album.id}'),
                  Text('User ID: ${album.userId}'),
                  Text(album.title),
                ],
              );
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}

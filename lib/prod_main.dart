import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  String? apiKey = dotenv.env['API_KEY'];
  String? secretKey = dotenv.env['SECRET_KEY'];
  String? databaseUrl = dotenv.env['DATABASE_URL'];
  String? port = dotenv.env['PORT'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Production"),
        ),
      ),
    );
  }
}

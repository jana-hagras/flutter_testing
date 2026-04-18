import 'package:flutter/material.dart';

class SimpleWidget extends StatefulWidget {
  const SimpleWidget({super.key});

  @override
  State<SimpleWidget> createState() => _SimpleWidgetState();
}

class _SimpleWidgetState extends State<SimpleWidget> {
  String text = 'Hello';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(text),
        ElevatedButton(
          onPressed: () {
            setState(() {
              text = 'Welcome';
            });
          },
          child: const Text('Change'),
        ),
      ],
    );
  }
}

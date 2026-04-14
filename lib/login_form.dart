import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool isAppear = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (isAppear)
          const ElevatedButton(
            key: Key('login'),
            onPressed: null,
            child: Text('Logging in...'),
          )
        else ...[
          const TextField(
            key: Key('email'),
            decoration: InputDecoration(
              labelText: 'email',
            ),
          ),
          const TextField(
            key: Key('password'),
            decoration: InputDecoration(
              labelText: 'Password',
            ),
            obscureText: true,
          ),
          ElevatedButton(
            key: const Key('login'),
            onPressed: () {
              setState(() {
                isAppear = true;
              });
            },
            child: const Text('Login'),
          ),
        ],
      ],
    );
  }
}
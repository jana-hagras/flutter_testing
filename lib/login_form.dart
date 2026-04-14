import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (isLoading)
          const CircularProgressIndicator(
            key: Key('loading_indicator'),
          )
        else ...[
          const TextField(
            key: Key('email'),
            decoration: InputDecoration(
              labelText: 'Email',
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
                isLoading = true;
              });
            },
            child: const Text('Login'),
          ),
        ],
      ],
    );
  }
}

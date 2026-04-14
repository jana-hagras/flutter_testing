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
    return Material(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: isLoading
              ? const CircularProgressIndicator(
                  key: Key('loading_indicator'),
                )
              : Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const TextField(
                      key: Key('email'),
                      decoration: InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 12),
                    const TextField(
                      key: Key('password'),
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 20),
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
                ),
        ),
      ),
    );
  }
}

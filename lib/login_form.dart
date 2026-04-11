import 'package:flutter/material.dart';
import'package:flutter/cupertino.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      // IS APPEAR IS TRUE => TExtfield with email key and password key and a button with key login
      // when clicked on a button, it changes the text of the button to "Logging in..."
      // and the textfield with email key and password key should disappear
      
         isAppear == true
            ? ElevatedButton(
                key: const Key('login'),
                onPressed: () {},
                child: Text('Logging in...'),
              )
            : SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(),
              ),
        TextField(
          key: const Key('email'),
          decoration: InputDecoration(
            labelText: 'email',
          ),
        ),
        TextField(
          key: const Key('password'),
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
          child: Text('Login'),
        ),
        
      ],
    );
  }
}
import 'package:flutter/material.dart';

class Loginscreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: () {
              Navigator.pushReplacement(context, '/home');
            }, child: Text('Login'),
            ),
            TextButton(onPressed: () {
              Navigator.pushReplacement(context, '/signup');
            }, child: Text('Don\'t have an account? Sign Up'),
            ),
          ],
        ),
        ),
    );
  }
}
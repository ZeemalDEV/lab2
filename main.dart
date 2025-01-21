import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String password = '';
  String imageSource = 'images/question-mark.png'; //image source

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login Page')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Login Name'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
              onChanged: (value) {
                password = value; // Capture the password input
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Check the password and update the image
                setState(() {
                  if (password == 'QWERTY847') {
                    imageSource = 'images/idea.png';
                  } else {
                    imageSource = 'images/stop.png';
                  }
                });
              },
              child: Text('Login'),
            ),
            SizedBox(height: 20),
            Image.asset(
              imageSource,
              width: 300,
              height: 300,
            ),
          ],
        ),
      ),
    );
  }
}

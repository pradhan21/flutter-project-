import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login and Signup',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginSignupPage(),
    );
  }
}

class LoginSignupPage extends StatefulWidget {
  const LoginSignupPage({Key? key}) : super(key: key);

  @override
  _LoginSignupPageState createState() => _LoginSignupPageState();
}

class _LoginSignupPageState extends State<LoginSignupPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final List<User> _users = []; // List to store user credentials

  bool _isSigningUp =
      false; // Track whether the user is signing up or logging in

  void _signup() { 
    final String username = _usernameController.text;
    final String password = _passwordController.text;

    // Create a new user and add it to the list
    final User newUser = User(username: username, password: password);
    _users.add(newUser);

    // Clear the text fields
    _usernameController.clear();
    _passwordController.clear();

    setState(() {
      _isSigningUp = false;
    });

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Success'),
          content: const Text('Signup successful!'),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void _login() {
    final String username = _usernameController.text;
    final String password = _passwordController.text;

    // Find the user in the list based on the username
    User? user;
    try {
      user = _users.firstWhere((user) => user.username == username);
    } catch (e) {
      user = null;
    }

    if (user != null && user.password == password) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Success'),
            content: const Text('Login successful!'),
            actions: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Error'),
            content: const Text('Invalid credentials!'),
            actions: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_isSigningUp ? 'Signup' : 'Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
              ),
            ),
            const SizedBox(height: 8.0),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _isSigningUp ? _signup : _login,
              child: Text(_isSigningUp ? 'Signup' : 'Login'),
            ),
            const SizedBox(height: 8.0),
            TextButton(
              onPressed: () {
                setState(() {
                  _isSigningUp = !_isSigningUp;
                });
              },
              child: Text(_isSigningUp
                  ? 'Already have an account? Login'
                  : 'Don\'t have an account? Signup'),
            ),
          ],
        ),
      ),
    );
  }
}

class User {
  final String username;
  final String password;

  User({required this.username, required this.password});
}
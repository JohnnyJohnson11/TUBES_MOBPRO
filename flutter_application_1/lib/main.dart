// Main Dart file to create the UI and integrate the backend
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUpPage(),
    );
  }
}

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _createAccount() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AccountCreatedPage(),
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Error: ${e.toString()}")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Calon Pekerja',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
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
            ElevatedButton(
              onPressed: _createAccount,
              child: Text('Daftar'),
              style: ElevatedButton.styleFrom(iconColor: Colors.green),
            ),
            SizedBox(height: 10),
            Text('atau', textAlign: TextAlign.center),
            SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Image.asset('assets/google_icon.png', height: 20),
              label: Text('Lanjutkan dengan Google'),
              style: ElevatedButton.styleFrom(iconColor: Colors.white),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Image.asset('assets/facebook_icon.png', height: 20),
              label: Text('Lanjutkan dengan Facebook'),
              style: ElevatedButton.styleFrom(iconColor: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}

class AccountCreatedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Success')),
      body: Center(
        child: Text(
          'Account Created',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

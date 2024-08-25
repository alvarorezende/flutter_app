import 'package:flutter/material.dart';
import 'package:flutter_project/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
          child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Container(
                    width: 250,
                    height: 250,
                    child: Image.asset(
                      'assets/images/Goku.jpg'
                    ),
                  ),
                  TextField(
                  onChanged: (value) {
                    email = value;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder()
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  onChanged: (value) {
                    password = value;
                  },
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 15),
                ElevatedButton(onPressed: () {
                  if (email == 'alvaro@teste.com' && password == '123') {
                    Navigator.of(context).pushReplacementNamed('/home');
                  }
                }, 
                child: const Text('Login')
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

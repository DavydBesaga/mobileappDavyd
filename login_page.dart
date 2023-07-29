import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobileappdw/signup_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  String _errorText = '';
  bool _showPassword = false;

  Future<void> _login(BuildContext context) async {
    final String email = _emailController.text.trim();
    final String password = _passwordController.text.trim();

    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      Navigator.pushNamedAndRemoveUntil(
        context,
        '/',
        (route) => false,
      );
    } catch (e) {
      setState(() {
        _errorText = 'Incorrect email or password. Please try again';
      });
    }
  }

  void _navigateToRegistration(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SignUpPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/5312.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: null,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/018430.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 7, 7, 7)),
                ),
              ),
              const SizedBox(height: 18.0),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: const TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0)),
                  suffixIcon: IconButton(
                    icon: Icon(_showPassword
                        ? Icons.visibility
                        : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _showPassword = !_showPassword;
                      });
                    },
                  ),
                ),
                obscureText: !_showPassword,
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 40,
                child: Material(
                  borderRadius: BorderRadius.circular(20),
                  shadowColor: Color.fromARGB(255, 162, 17, 17),
                  color: Color.fromARGB(255, 0, 0, 0),
                  elevation: 7,
                  child: GestureDetector(
                      onTap: () => _login(context),
                      child: const Center(
                          child: Text('Log in',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 249, 244, 248),
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat')))),
                ),
              ),
              const SizedBox(height: 1),
              TextButton(
                onPressed: () => Navigator.of(context).pushNamed('/signup'),
                child: const Text(
                  'Sign up',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              const SizedBox(height: 40.0),
              Text(
                _errorText,
                style: const TextStyle(color: Color.fromARGB(255, 189, 13, 1)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                    padding: const EdgeInsets.fromLTRB(15, 110, 0, 0),
                    child: const Center(
                      child: Text("LogIn",
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold)),
                    )),
              ],
            ),
          )
        ])));
  }
}

import 'package:ezsacco/HOME.dart';
import 'package:ezsacco/autherntication/authservice.dart';
import 'package:ezsacco/home1.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../signup/membersignup.dart';

class Login1Page extends StatefulWidget {
  @override
  _Login1PageState createState() => _Login1PageState();
}

class _Login1PageState extends State<Login1Page> {
  bool _isObscure = true;

  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final authService = Provider.of<AuthService>(context);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 200, 202, 202),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(12),
              child: const Text(
                "Hello there, welcome back",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'UserName / Email',
                  contentPadding: EdgeInsets.all(0.5),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)),
                  labelStyle: TextStyle(
                      fontSize: 13.0,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                controller: passwordController,
                obscureText: _isObscure,
                decoration: InputDecoration(
                  labelText: 'Password',
                  suffixIcon: IconButton(
                      icon: Icon(
                          _isObscure ? Icons.visibility_off : Icons.visibility),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      }),
                  contentPadding: EdgeInsets.all(0.5),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)),
                  labelStyle: TextStyle(
                      fontSize: 13.0,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: MaterialButton(
                onPressed: () async {
                  await authService.signInWithEmailandPassword(
                      emailController.text, passwordController.text);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const home()),
                  );
                },
                color: Colors.green,
                elevation: 10.0,
                child: GestureDetector(
                  child: const Center(
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Montserrat"),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text("I don't have an account?"),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Signup1Page()),
                    );
                  },
                  child: const Text(
                    "Signup",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 88, 100, 32),
                        fontFamily: "Montserrat",
                        decoration: TextDecoration.underline),
                  ),
                )
              ],
            )
          ]),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../autherntication/authservice.dart';
import '../login/memberlogin.dart';

class Signup1Page extends StatefulWidget {
  @override
  _Signup1PageState createState() => _Signup1PageState();
}

class _Signup1PageState extends State<Signup1Page> {
  final TextEditingController surnameController = TextEditingController();
  final TextEditingController othernameController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController saccogroupController = TextEditingController();
  final TextEditingController contactController = TextEditingController();

  bool _isObscure = true;
  var code = '+256';
  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 200, 202, 202),
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  controller: surnameController,
                  decoration: InputDecoration(
                    labelText: 'SurName',
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
                  controller: othernameController,
                  decoration: InputDecoration(
                    labelText: 'OtherName',
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
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  controller: usernameController,
                  decoration: InputDecoration(
                    labelText: 'UserName',
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
                  controller: emailController,
                  decoration: const InputDecoration(
                    labelText: 'Email',
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextField(
                        controller: passwordController,
                        obscureText: _isObscure,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          suffixIcon: IconButton(
                              icon: Icon(_isObscure
                                  ? Icons.visibility_off
                                  : Icons.visibility),
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
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextField(
                        controller: confirmPasswordController,
                        obscureText: _isObscure,
                        decoration: InputDecoration(
                          labelText: 'Confirm password',
                          suffixIcon: IconButton(
                              icon: Icon(_isObscure
                                  ? Icons.visibility_off
                                  : Icons.visibility),
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
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  controller: saccogroupController,
                  decoration: const InputDecoration(
                    labelText: 'Sacco Group',
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text('$code'),
                  ),
                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: TextField(
                        controller: contactController,
                        decoration: InputDecoration(
                          labelText: 'Contact',
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
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: MaterialButton(
                  onPressed: () async {
                    await authService.createuserWithEmailandPassword(
                        emailController.text, passwordController.text);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login1Page()),
                    );
                  },
                  color: Colors.green,
                  elevation: 10.0,
                  child: GestureDetector(
                    child: const Center(
                      child: Text(
                        "SIGNUP",
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
                  const Text("I have an account?"),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login1Page()),
                      );
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 88, 100, 32),
                          fontFamily: "Montserrat",
                          decoration: TextDecoration.underline),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 40.0,
              ),
            ]),
      ),
    );
  }
}

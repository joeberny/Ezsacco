// ignore_for_file: prefer_const_constructors

import 'package:ezsacco/autherntication/authservice.dart';
import 'package:ezsacco/page1/login/memberlogin.dart';
import 'package:ezsacco/page1/section/fallin.dart';
import 'package:ezsacco/page1/signup/membersignup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyADJSQ8QbrQFqeIsQfo5Z0bVEW_-ZPPQf8",
      appId: "1:420466485468:android:835775e63aaf5d3b00ec19",
      messagingSenderId:
          "420466485468-oo3huau9jgnobgvf1rgor6i8biitqqqk.apps.googleusercontent.com",
      projectId: "passcode-auth",
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [Provider<AuthService>(create: (_) => AuthService())],
        child: MaterialApp(
          initialRoute: 'fallin',
          routes: {
            'fallin': (context) => home(),
            'membersignup': (context) => Signup1Page(),
            'memberlogin': (context) => Login1Page(),
            //'home_screen': (context) => HomeScreen()
          },
        ));
  }
}

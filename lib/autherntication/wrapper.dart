import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../page1/login/memberlogin.dart';
import '../page1/login/saccogrouplogin.dart';
import 'authservice.dart';
import 'userclass.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    return StreamBuilder<User?>(
        stream: authService.user,
        builder: (_, AsyncSnapshot<User?> snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            final User? user = snapshot.data;
            return user == null ? Login1Page() : Login2Page();
          } else {
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
  }
}

class HomePage {}

import 'package:ezsacco/page1/login/saccogrouplogin.dart';
import 'package:flutter/material.dart';

import '../login/memberlogin.dart';
import '../signup/membersignup.dart';
import '../signup/saccogroupsignup.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[600],
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text(
          'HOME',
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white70,
              letterSpacing: 0.4),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
//LINKS TO USER PROFILE...
          Card(
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Signup1Page()));
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.album),
                    title: Text('Create.?\n A Member Ez-SacC0 Account'),
                    subtitle:
                        Text('Jion Ez-SacCO known to get started with saving'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text('I have an account? '),
                      const SizedBox(width: 8),
                      TextButton(
                        child: const Text('Login'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Login1Page()),
                          );
                        },
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
//LINKS USER TO SAVING OPTIONS
          Card(
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Signup2Page()));
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.album),
                    title: Text('Create.?\n A Group Ez-SacC0 Account'),
                    subtitle: Text(
                        'Tap that button to get started with Ez-SacCO member manager.'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text('I have an account? '),
                      const SizedBox(width: 8),
                      TextButton(
                        child: const Text('Login'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Login2Page()),
                          );
                        },
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 30),
        ],
      ),
    );
  }
}

import 'package:ezsacco/autherntication/wrapper.dart';
import 'package:ezsacco/dashboard/homePage.dart';
import 'package:flutter/material.dart';

import 'saveapi.dart';

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
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
//LINKS TO USER TO DASHBOARD
          Card(
            child: InkWell(
              splashColor: Colors.red.withAlpha(30),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => dashboard()),
                );
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.dashboard),
                    title: Text('DASHBOARD'),
                    subtitle: Text(
                        'Click that bar to view your account balances and increament it now'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const <Widget>[
                      Icon(
                        Icons.arrow_forward_ios,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 30),
//LINKS TO USER PROFILE...
          Card(
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                debugPrint('Card tapped.');
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.person),
                    title: Text('USER PROFILE'),
                    subtitle: Text(
                        'View user profile and make Necessary undates to your profile'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const <Widget>[
                      Icon(
                        Icons.arrow_forward_ios,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 30),
//LINKS USER TO SAVING OPTIONS
          Card(
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => save()));
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.save_alt),
                    title: Text('SAVE with Ez-SacC0'),
                    subtitle: Text(
                        'Start up Saving with Ez-SacCO..\n Rise a chance of getting a higher loan'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const <Widget>[
                      Icon(
                        Icons.arrow_forward_ios,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
//LINKS USER TO LOAN OPTIONS
          const SizedBox(height: 30),
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.album),
                  title: Text('GET LOAN with Ez-SacC0'),
                  subtitle: Text(
                      'Its your chance to get a loan with Ez-SacCO.\n No need to get out of your house just click that button---'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const <Widget>[
                    Icon(
                      Icons.arrow_forward_ios,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

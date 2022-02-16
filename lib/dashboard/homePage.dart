import 'package:ezsacco/dashboard/transferHistoryWidget.dart';
import 'package:ezsacco/saveapi.dart';
import 'package:flutter/material.dart';

class dashboard extends StatefulWidget {
  @override
  _dashboardState createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF131313),
        body: SingleChildScrollView(
          child: Stack(children: [
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        // ignore: prefer_const_constructors
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                          ),
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            // Add one stop for each color. Stops should increase from 0 to 1
                            stops: [0.2, 0.7],
                            colors: [
                              Color.fromARGB(255, 83, 104, 105),
                              Color.fromARGB(255, 71, 143, 139),
                            ],
                            // stops: [0.0, 0.1],
                          ),
                        ),
                        height: MediaQuery.of(context).size.height * .40,
                        padding: EdgeInsets.only(top: 20, left: 30, right: 20),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                const Text(
                                  "Dashboard",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 19.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.person,
                                    color: Colors.white,
                                  ),
                                  iconSize: 40.0,
                                  onPressed: () {},
                                )
                              ],
                            ),
                            SizedBox(height: 30),
                            Text(
                              "Balance",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "ugx 15,990.00",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 34.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                          ],
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Padding(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Flexible(
                              child: Padding(
                                padding: EdgeInsets.all(32),
                                child: MaterialButton(
                                    height: 60,
                                    onPressed: () {
                                      /* Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));*/
                                    },
                                    shape: RoundedRectangleBorder(
                                        side: BorderSide(color: Colors.orange),
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Save-in",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 18),
                                        ),
                                        SizedBox(
                                          height: 90,
                                        ),
                                        Icon(
                                          Icons.arrow_circle_up,
                                          color: Colors.white30,
                                          size: 36.0,
                                        ),
                                      ],
                                    )),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Flexible(
                              child: Padding(
                                padding: EdgeInsets.all(32),
                                child: MaterialButton(
                                    height: 60,
                                    color: Color.fromARGB(255, 41, 107, 35),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => save()));
                                    },
                                    shape: RoundedRectangleBorder(
                                        side: BorderSide(color: Colors.orange),
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Save-Out",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 18),
                                        ),
                                        SizedBox(
                                          height: 90,
                                        ),
                                        Icon(
                                          Icons.arrow_circle_down,
                                          color: Colors.white30,
                                          size: 36.0,
                                        ),
                                      ],
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30.0),
                      Text(
                        "TRANSACTION HISTORY",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(height: 20.0),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          TransterHistorWidget(
                              //    iconData: Icons.download,
                              text: "Received",
                              date: "15 Aug",
                              coins: "600,000 UGX",
                              dollars: "\$170.577",
                              color: Colors.green),
                          SizedBox(height: 20.0),
                          TransterHistorWidget(
                            //  iconData: Icons.upload,
                            text: "Cashed-Out",
                            date: "13 Aug",
                            coins: "300,000 UGX",
                            dollars: "-\$85.678",
                            color: Colors.pink,
                          ),
                        ],
                      ),
                    ],
                  ),
                ]),
          ]),
        ));
  }
}

import 'package:Elderly/AllScreens/mainScreen.dart';
import 'package:Elderly/AllScreens/maindrawer.dart';
import 'package:Elderly/services/AuthService.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class EmergencyScreen extends StatefulWidget {
  AuthService authService = AuthService();
  void customlaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print("could not launch $command");
    }
  }
  static const String idScreen  = "EmergencyScreen";
  @override
  _EmergencyScreenState createState() => _EmergencyScreenState();
}

class _EmergencyScreenState extends State<EmergencyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        elevation: 0.0,
        title: Text(
          'Emergency call',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.fast_forward_outlined,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, mainScreen.idSCreen, (route) => false);
            },
          )
        ],
      ),
      drawer: Drawer(child: MainDrawer(),
      ),
      body: SizedBox(
        child: Column(
          children: <Widget>[
            Container(
              height: 70,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.grey[200]),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: BorderSide(
                                color: Colors.grey.withOpacity(0.4)
                            ),
                          ),
                          contentPadding: EdgeInsets.only(top:10,left: 10.0),
                          hintText: 'search...',
                          suffixIcon: Icon(Icons.search,color: Colors.grey.withOpacity(0.4),),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView.count(
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                primary: false,
                crossAxisCount: 2,
                children: <Widget>[
                  Card(
                    elevation: 4,
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          "assets/map.png",
                          width: 100,
                        ),
                        Container(
                          child: RaisedButton(
                            color: Colors.white,
                            onPressed: () {

                            },
                            child: Text(
                              'call ambulance',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 4,
                    child: Column(
                      children: <Widget>[
                        Image.asset("assets/clock.png", width: 100),
                        Container(
                          child: RaisedButton(
                            color: Colors.white,
                            onPressed: () {

                            },
                            child: Text(
                              'Pill Remember',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 4,
                    child: Column(
                      children: <Widget>[
                        Image.asset("assets/aid1.png", width: 100),
                        Container(
                          child: RaisedButton(
                            color: Colors.white,
                            onPressed: () {

                            },
                            child: Text(
                              'First aid',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 4,
                    child: Column(
                      children: <Widget>[
                        Image.asset("assets/aid1.png", width: 100),
                        Container(
                          child: RaisedButton(
                            color: Colors.white,
                            onPressed: () {

                            },
                            child: Text(
                              'First aid',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), Card(
                    elevation: 4,
                    child: Column(
                      children: <Widget>[
                        Image.asset("assets/aid1.png", width: 100),
                        Container(
                          child: RaisedButton(
                            color: Colors.white,
                            onPressed: () {

                            },
                            child: Text(
                              'First aid',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), Card(
                    elevation: 4,
                    child: Column(
                      children: <Widget>[
                        Image.asset("assets/aid1.png", width: 100),
                        Container(
                          child: RaisedButton(
                            color: Colors.white,
                            onPressed: () {

                            },
                            child: Text(
                              'First aid',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), Card(
                    elevation: 4,
                    child: Column(
                      children: <Widget>[
                        Image.asset("assets/aid1.png", width: 100),
                        Container(
                          child: RaisedButton(
                            color: Colors.white,
                            onPressed: () {

                            },
                            child: Text(
                              'First aid',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), Card(
                    elevation: 4,
                    child: Column(
                      children: <Widget>[
                        Image.asset("assets/aid1.png", width: 100),
                        Container(
                          child: RaisedButton(
                            color: Colors.white,
                            onPressed: () {

                            },
                            child: Text(
                              'First aid',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), Card(
                    elevation: 4,
                    child: Column(
                      children: <Widget>[
                        Image.asset("assets/aid1.png", width: 100),
                        Container(
                          child: RaisedButton(
                            color: Colors.white,
                            onPressed: () {

                            },
                            child: Text(
                              'First aid',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), Card(
                    elevation: 4,
                    child: Column(
                      children: <Widget>[
                        Image.asset("assets/aid1.png", width: 100),
                        Container(
                          child: RaisedButton(
                            color: Colors.white,
                            onPressed: () {

                            },
                            child: Text(
                              'First aid',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), Card(
                    elevation: 4,
                    child: Column(
                      children: <Widget>[
                        Image.asset("assets/aid1.png", width: 100),
                        Container(
                          child: RaisedButton(
                            color: Colors.white,
                            onPressed: () {

                            },
                            child: Text(
                              'First aid',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), Card(
                    elevation: 4,
                    child: Column(
                      children: <Widget>[
                        Image.asset("assets/aid1.png", width: 100),
                        Container(
                          child: RaisedButton(
                            color: Colors.white,
                            onPressed: () {

                            },
                            child: Text(
                              'First aid',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), Card(
                    elevation: 4,
                    child: Column(
                      children: <Widget>[
                        Image.asset("assets/aid1.png", width: 100),
                        Container(
                          child: RaisedButton(
                            color: Colors.white,
                            onPressed: () {

                            },
                            child: Text(
                              'First aid',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), Card(
                    elevation: 4,
                    child: Column(
                      children: <Widget>[
                        Image.asset("assets/aid1.png", width: 100),
                        Container(
                          child: RaisedButton(
                            color: Colors.white,
                            onPressed: () {

                            },
                            child: Text(
                              'First aid',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), Card(
                    elevation: 4,
                    child: Column(
                      children: <Widget>[
                        Image.asset("assets/aid1.png", width: 100),
                        Container(
                          child: RaisedButton(
                            color: Colors.white,
                            onPressed: () {

                            },
                            child: Text(
                              'First aid',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), Card(
                    elevation: 4,
                    child: Column(
                      children: <Widget>[
                        Image.asset("assets/aid1.png", width: 100),
                        Container(
                          child: RaisedButton(
                            color: Colors.white,
                            onPressed: () {

                            },
                            child: Text(
                              'First aid',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), Card(
                    elevation: 4,
                    child: Column(
                      children: <Widget>[
                        Image.asset("assets/aid1.png", width: 100),
                        Container(
                          child: RaisedButton(
                            color: Colors.white,
                            onPressed: () {

                            },
                            child: Text(
                              'First aid',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 4,
                    child: Column(
                      children: <Widget>[
                        Image.asset("assets/know.png", width: 100),
                        Container(
                          child: RaisedButton(
                            color: Colors.white,
                            onPressed: () {

                            },
                            child: Text(
                              'News ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 4,
                    child: Column(
                      children: <Widget>[
                        Image.asset("assets/chat.png", width: 100),
                        Container(
                          child: RaisedButton(
                            color: Colors.white,
                            onPressed: () {

                            },
                            child: Text(
                              'Chat',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 4,
                    child: Column(
                      children: <Widget>[
                        Image.asset("assets/QR.png", width: 100),
                        Container(
                          child: RaisedButton(
                            color: Colors.white,
                            onPressed: () {

                            },
                            child: Text(
                              'QR Code',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 4,
                    child: Column(
                      children: <Widget>[
                        Image.asset("assets/cal.png", width: 100),
                        Container(
                          child: RaisedButton(
                            color: Colors.white,
                            onPressed: () {

                            },
                            child: Text(
                              'Emercency',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    elevation: 4,
                    child: Column(
                      children: <Widget>[
                        Image.asset("assets/Note.png", width: 100),
                        Container(
                          child: RaisedButton(
                            color: Colors.white,
                            onPressed: () {

                            },
                            child: Text(
                              'Note Activity',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

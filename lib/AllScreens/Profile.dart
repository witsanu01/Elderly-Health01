import 'package:Elderly/AllScreens/mainScreen.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  static const String idScreen = "Profile";
  @override
  _ProfileState createState() => _ProfileState();
}
class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        elevation: 0.0,
        title: Text(
          'Profile',
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
    );
  }
}

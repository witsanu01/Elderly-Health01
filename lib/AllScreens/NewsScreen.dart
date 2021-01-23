import 'package:Elderly/AllScreens/mainScreen.dart';
import 'package:flutter/material.dart';

class NewElderly extends StatefulWidget {
  static const String idScreen = "NewsScreen";
  @override
  _NewElderlyState createState() => _NewElderlyState();
}

class _NewElderlyState extends State<NewElderly> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        elevation: 0.0,
        title: Text(
          'NewsElderly',
          style: TextStyle(color: Colors.white),
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
                  context,mainScreen.idSCreen, (route) => false);
            },
          )
        ],
      ),
    );
  }
}




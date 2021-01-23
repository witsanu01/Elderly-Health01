import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class welcome extends StatefulWidget {
  @override
  _welcomeState createState() => _welcomeState();
  static const String idScreen = "welcome";
}

class _welcomeState extends State<welcome>{

  @override

  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body:   Column(
        children: [
          Center(
                    child: SizedBox(
                      child: Container(
                              width: width,
                              height: 400,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/logo12.png'),
                                ),
                          ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              height: 50.0,
                              width: 120.0,
                              padding: EdgeInsets.symmetric(vertical: 12.0,horizontal: 12.0),
                              child: Text('Welcome',style: GoogleFonts.pacifico(),),
                              decoration: BoxDecoration(
                                color: Colors.greenAccent,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(22.0),
                                  topLeft: Radius.circular(22.0),
                                  bottomRight: Radius.circular(200.0),
                                ),
                              ),
                            ),
                            Icon(Icons.home,size: 30.0,)
                          ],
                        ),
                      ),
                    ),
            ),
        ],
      ),
    );
  }
}

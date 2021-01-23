import 'package:Elderly/AllScreens/Profile.dart';
import 'package:Elderly/AllScreens/loginScreen.dart';
import 'package:Elderly/services/AuthService.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MainDrawer extends StatelessWidget {
  AuthService authService = AuthService();
  void customlaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print("could not launch $command");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20.0,
        ),
        ListTile(
          onTap: () {
            Navigator.pushNamedAndRemoveUntil(
                context, Profile.idScreen, (route) => false);
          },
          leading: Icon(
            Icons.person,
            color: Colors.black,
          ),
          title: Text("Proflie"),
        ),
        ListTile(
          onTap: () {
            customlaunch("tel:1669");
          },
          leading: Icon(
            Icons.account_balance_wallet_outlined,
            color: Colors.black,
          ),
          title: Text(
            "Phone",
          ),
        ),
        ListTile(
          onTap: () {
            customlaunch('https://google.com');
          },
          leading: Icon(
            Icons.water_damage,
            color: Colors.black,
          ),
          title: Text(
            "Search Google",
          ),
        ),
        ListTile(
          onTap: () {
            customlaunch("http://www.hosting1.cmru.ac.th/61143231/?fbclid=IwAR1OEgQrhhaNyLTiEzvQTy9C2enAPRayRCsnz9e5DxnlA5TtA84XcA1p5S4");
          },
          leading: Icon(
            Icons.contact_support,
            color: Colors.black,
          ),
          title: Text(
            "Support Home",
          ),
        ),
        ListTile(
          onTap: () {
            Navigator.pushNamedAndRemoveUntil(
                context, LoginScreen.idScreen, (route) => false);
          },
          leading: Icon(
            Icons.login,
            color: Colors.black,
          ),
          title: Text(
            "Login",
          ),
        ),
        ListTile(
          onTap: () {
            Navigator.pushNamedAndRemoveUntil(
                context, LoginScreen.idScreen, (route) => false);
          },
          leading: Icon(
            Icons.logout,
            color: Colors.black,
          ),
          title: Text(
            "Register",
          ),
        ),
      ],
    );
  }
}

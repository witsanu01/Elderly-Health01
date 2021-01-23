import 'package:Elderly/AllScreens/ChatScreen.dart';
import 'package:Elderly/AllScreens/EmergencyScreeen.dart';
import 'package:Elderly/AllScreens/NewsScreen.dart';
import 'package:Elderly/AllScreens/Profile.dart';
import 'package:Elderly/AllScreens/firstaid/firstaid.dart';
import 'file:///C:/Users/thanz/Elderly/lib/AllScreens/QRcode/QRcode.dart';
import 'package:Elderly/AllScreens/googlemap.dart';
import 'package:Elderly/AllScreens/loginScreen.dart';
import 'package:Elderly/AllScreens/mainScreen.dart';
import 'package:Elderly/AllScreens/pillRememberScreen.dart';
import 'package:Elderly/AllScreens/registerationScreen.dart';
import 'package:Elderly/AllScreens/searchScreen.dart';
import 'package:Elderly/DataHandler/appData.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main()async
{
   runApp(MyApp ());
}
class MyApp  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=> AppData(),
      child: MaterialApp(
        title: 'Elderly Health',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: mainScreen.idSCreen,
        routes: {
            RegisterationScreen.idSCreen: (context)=> RegisterationScreen(),
            LoginScreen.idScreen: (context)=> LoginScreen(),
            mainScreen.idSCreen:(context)=> mainScreen(),
            Googlemap.idSCreen:(context ) =>Googlemap(),
            pillRememberScreen.idSCreen:(context) =>pillRememberScreen(),
            ChatScreen.idScreen:(context)=> ChatScreen(),
            QRcode.idScreen:(context) => QRcode(),
            firstaid.idScreen:(context)=> firstaid(),
            SearchScreen.idSCreen:(context)=>SearchScreen (),
            NewElderly.idScreen:(context)=>NewElderly(),
            Profile.idScreen:(context)=>Profile(),
            EmergencyScreen.idScreen:(context)=>EmergencyScreen(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

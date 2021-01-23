import 'package:Elderly/AllScreens/mainScreen.dart';
import 'package:Elderly/AllScreens/registerationScreen.dart';
import 'package:flutter/material.dart';
import 'package:sign_button/sign_button.dart';


class LoginScreen extends StatelessWidget {
  static const String idScreen ="login";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 65.0,
              ),
              Image(
                image: AssetImage('assets/logo12.png'),
                width: 250.0,
                height: 250.0,
                alignment: Alignment.center,
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                "",
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 1.0,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(fontSize: 14.0),
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 10.0,
                          ),
                          icon: Icon(Icons.email)),
                      style: TextStyle(fontSize: 14.0),
                    ),
                    SizedBox(
                      height: 1.0,
                    ),

                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(fontSize: 14.0),
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 10.0,
                        ),
                        icon: Icon(Icons.lock),
                      ),
                      style: TextStyle(fontSize: 14.0),
                    ),
                    SizedBox(
                      height: 1.0,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: RaisedButton(
                        color: Colors.blue,
                        onPressed: () {
                          Navigator.pushNamedAndRemoveUntil(context, mainScreen.idSCreen, (route) => false);
                        },
                        child: Text(
                          'Login'.toUpperCase(),
                          style: TextStyle(color: Colors.white,fontSize: 14.0,),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SignInButton(
                  buttonType: ButtonType.google,
                  onPressed: () {
                    print('click');
                  }),
              SignInButton(
                  buttonType: ButtonType.facebook,
                  onPressed: () {
                    print('click');
                  }),
              SignInButton(
                  buttonType: ButtonType.youtube,
                  onPressed: () {
                    print('click');
                  }),

              FlatButton(
                splashColor: Colors.blue.shade500,
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(context, RegisterationScreen.idSCreen, (route) => false);
                },
                child: Text(
                  'Do not have an Account? Register Here',
                  style: TextStyle(color: Colors.black45),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

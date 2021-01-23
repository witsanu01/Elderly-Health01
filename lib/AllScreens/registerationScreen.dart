import 'package:Elderly/AllScreens/loginScreen.dart';
import 'package:flutter/material.dart';


class RegisterationScreen extends StatelessWidget {

  static const String idSCreen = "register";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0.0,
        title: Text(
          'Register',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,

      ),
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
                width: 200.0,
                height: 200.0,
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
                          labelText: 'Name',
                          labelStyle: TextStyle(fontSize: 14.0),
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 10.0,
                          ),
                          icon: Icon(Icons.drive_file_rename_outline)),
                      style: TextStyle(fontSize: 14.0),
                    ),
                    SizedBox(
                      height: 1.0,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'ID Person',
                        labelStyle: TextStyle(fontSize: 14.0),
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 10.0,
                        ),
                        icon: Icon(Icons.person),
                      ),
                      style: TextStyle(fontSize: 14.0),
                    ),
                    SizedBox(
                      height: 1.0,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'Number',
                          labelStyle: TextStyle(fontSize: 14.0),
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 10.0,
                          ),
                          icon: Icon(Icons.phone)),
                      style: TextStyle(fontSize: 14.0),
                    ),
                    SizedBox(
                      height: 1.0,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'Phone contact',
                          labelStyle: TextStyle(fontSize: 14.0),
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 10.0,
                          ),
                          icon: Icon(Icons.phone_android)),
                      style: TextStyle(fontSize: 14.0),
                    ),
                    SizedBox(
                      height: 1.0,
                    ),
                    TextField(

                      decoration: InputDecoration(
                          labelText: 'Date',
                          labelStyle: TextStyle(fontSize: 14.0),
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 10.0,
                          ),
                          icon: Icon(Icons.date_range)),
                      style: TextStyle(fontSize: 14.0),
                    ),
                    SizedBox(
                      height: 1.0,
                    ),
                    TextField(

                      decoration: InputDecoration(
                          labelText: 'age',
                          labelStyle: TextStyle(fontSize: 14.0),
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 10.0,
                          ),
                          icon: Icon(Icons.group_add)),
                      style: TextStyle(fontSize: 14.0),
                    ),
                    SizedBox(
                      height: 1.0,
                    ),
                    TextField(

                      decoration: InputDecoration(
                          labelText: 'Congenital Disease',
                          labelStyle: TextStyle(fontSize: 14.0),
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 10.0,
                          ),
                          icon: Icon(Icons.hotel_outlined)),
                      style: TextStyle(fontSize: 14.0),
                    ),
                    SizedBox(
                      height: 1.0,
                    ),
                    TextField(

                      decoration: InputDecoration(
                          labelText: 'Address',
                          labelStyle: TextStyle(fontSize: 14.0),
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 10.0,
                          ),
                          icon: Icon(Icons.add_business)),
                      style: TextStyle(fontSize: 14.0),
                    ),
                    SizedBox(
                      height: 1.0,
                    ),
                    TextField(

                      decoration: InputDecoration(
                          labelText: 'Photo',
                          labelStyle: TextStyle(fontSize: 14.0),
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 10.0,
                          ),
                          icon: Icon(Icons.camera_alt_outlined)),
                      style: TextStyle(fontSize: 14.0),
                    ),
                    TextField(

                      decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(fontSize: 14.0),
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 10.0,
                          ),
                          icon: Icon(Icons.lock)),
                      style: TextStyle(fontSize: 14.0),
                    ),
                    TextField(

                      decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(fontSize: 14.0),
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 10.0,
                          ),
                          icon: Icon(Icons.desktop_mac_outlined)),
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

                        },
                        child: Text(
                          'Create Account'.toUpperCase(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              FlatButton(
                splashColor: Colors.blue.shade500,
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, LoginScreen.idScreen, (route) => false);
                },
                child: Text(
                  'Already have an Account ? Login Here!!',
                  style: TextStyle(color: Colors.black45),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  //
  // void registerNewUser(BuildContext context) async {
  //   final User firebaseUser = (await _firebaseAuth
  //           .createUserWithEmailAndPassword(
  //               email: EmailTextEditingController.text,
  //               password: PasswordTextEditingController.text)
  //           .catchError((errMsg) {
  //     displayToastMessage("Error" + errMsg.toString(), context);
  //   })).user;
  //   if (firebaseUser != null) {
  //     Map userdataMap = {
  //       "name": nameTextEditingController.text.trim(),
  //       "IDperson": IDpersonTextEditingController.text.trim(),
  //       "Number": NumberTextEditingController.text.trim(),
  //       "Phone": PhoneTextEditingController.text.trim(),
  //       "Date": DateTextEditingController.text.trim(),
  //       "Age": AgeTextEditingController.text.trim(),
  //       "Disease": DiseaseTextEditingController.text.trim(),
  //       "Address": AddressTextEditingController.text.trim(),
  //       "photo": PhotoTextEditingController.text.trim(),
  //       "password": PasswordTextEditingController.text.trim(),
  //       "Email": EmailTextEditingController.text.trim(),
  //     };
  //     UsersRef.child(firebaseUser.uid).set((userdataMap));
  //     displayToastMessage(
  //         "Congratulation, your account has been create.", context);
  //     Navigator.pushNamedAndRemoveUntil(
  //         context, mainScreen.idSCreen, (route) => false);
  //   } else {
  //     displayToastMessage("New user account has not been Create", context);
  //   }
  // }
}

// displayToastMessage(String message, BuildContext context) {
//   Fluttertoast.showToast(msg: message);


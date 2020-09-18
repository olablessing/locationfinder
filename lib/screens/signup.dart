import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final emailField = TextField(
      obscureText: false,
      style: TextStyle(color: Color(0xFF2699FB)),
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(20),
          hintText: "email",
          hintStyle: TextStyle(color: Color(0xFF2699FB)),
          prefixIcon: Icon(
            Icons.mail,
            color: Colors.blue,
          )));
            final name = TextField(
      obscureText: false,
      style: TextStyle(color: Color(0xFF2699FB)),
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(20),
          hintText: "Name",
          hintStyle: TextStyle(color: Color(0xFF2699FB)),
          prefixIcon: Icon(
            Icons.person,
            color: Colors.blue,
          )));
  final passWordField = TextField(
      obscureText: true,
      style: TextStyle(color: Color(0xFF2699FB)),
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(20),
          hintText: "password",
          hintStyle: TextStyle(color: Color(0xFF2699FB)),
          prefixIcon: Icon(Icons.lock, color: Colors.blue)));
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('SIGNUP'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          
           
             
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.all(32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                       SizedBox(
                        height: 100,
                      ),
                      emailField,
                      SizedBox(
                        height: 20,
                      ),
                      name,
                       SizedBox(
                        height: 20,
                      ),
                      passWordField,
                      SizedBox(
                        height: 50,
                      ),
                      RaisedButton(
                        child: Text(
                          '                                  CONTINUE                                   ',
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blue,
                        onPressed: () { Navigator.pushNamed(context, '/b');},
                      )
                    ],
                  ),
                )),
              )),
       
   
    );
  }
}

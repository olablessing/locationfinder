import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
  final emailField = TextField(
      obscureText: false,
      style: TextStyle(color: Color(0xFF2699FB)),
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(20),
          hintText: "email",
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
          title: Text('LOGIN'),
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
                        onPressed: () {Navigator.pushNamed(context, '/d');},
                      )
                    ],
                  ),
                )),
              )),
       
   
    );
  }
}

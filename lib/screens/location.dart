import 'package:flutter/material.dart';

class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location>
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

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    
     appBar: AppBar(),
        
   
      body: Center(
child: Padding(padding: const EdgeInsets.all(20),

child: Container(decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "images/successful.png",
                        ),
                        fit: BoxFit.contain,
                        alignment: Alignment.center,
                      ),
                    ),                      ),
                    ),),);

  }
}
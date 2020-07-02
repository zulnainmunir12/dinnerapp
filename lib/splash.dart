import 'dart:async';

import 'package:dinnerApp/update.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  @override
  _Splash createState() {
    return _Splash();
  }
}

class _Splash extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 10),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => Update())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(45, 201, 45, 2),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 3),
          child: Column(
            children: <Widget>[
              Image.asset(
                'logo.png',
                height: 200,
              ),

              Flexible(
                child: Container(),
              ),
              Row(
                children: <Widget>[
                  SizedBox(width: 125,),
                  Text(
                    'Part of',
                    style: TextStyle(color: Colors.white.withOpacity(0.7),fontSize: 20),
                  ),
                  SizedBox(width: 4,),
                  Text('LynasDining',style: TextStyle(fontSize:22,color: Colors.white,fontWeight: FontWeight.bold),)
                ],
              )
            ],
          ),
        ));
  }
}

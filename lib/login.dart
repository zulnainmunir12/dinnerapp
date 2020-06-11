import 'package:dinnerApp/features.dart';
import 'package:dinnerApp/manage_eateries.dart';
import 'package:dinnerApp/reset_pasword.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _Login createState() {
    return _Login();
  }
}

class _Login extends State<Login> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: <Widget>[
      Column(
        children: <Widget>[
          Container(
            constraints: BoxConstraints.expand(height: 180),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('logo2.png'), fit: BoxFit.fill)),
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 15,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 30,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Features();
                      }));
                    },
                  ),
                ),
                new Positioned(
                  child: Center(
                    child: Image.asset('dw.png'),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              'Business Login',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: 330,
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Flexible(
                  child: TextField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(238, 238, 238, 2),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(238, 238, 238, 2))),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(238, 238, 238, 2))),
                      hintText: "Email Address",
                      hintStyle:
                          TextStyle(color: Color.fromRGBO(165, 165, 165, 2)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            width: 330,
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Flexible(
                  child: TextField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(238, 238, 238, 2),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(238, 238, 238, 2))),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(238, 238, 238, 2))),
                      hintText: "Email Address",
                      hintStyle:
                          TextStyle(color: Color.fromRGBO(165, 165, 165, 2)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: SizedBox(
              width: 330,
              height: 50,
              child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      side: BorderSide(color: Color.fromRGBO(54, 191, 54, 2))),
                  color: Color.fromRGBO(54, 191, 54, 2),
                  child: Text(
                    'Log in',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                              return ManageEateries();
                            }));
                  }),
            ),
          ),
          SizedBox(
            height: 150,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 85,
              ),
              Text(
                'Having a problem?',
                style: TextStyle(fontWeight: FontWeight.w300),
              ),
              FlatButton(
                child: Text(
                  'Reset your passsword',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w300),
                ),
                onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return ResetPassword();
                      }));
                },
              )
            ],
          )
        ],
      ),
    ]));
  }
}

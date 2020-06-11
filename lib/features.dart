import 'package:dinnerApp/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Features extends StatefulWidget {
  _Features createState() {
    return _Features();
  }
}

class _Features extends State<Features> {
  int _index = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 60,
          ),
          Center(
            child: Text(
              'Manage table booking',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              'wherever you are',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 400,
            height: 400,
            color: Colors.grey,
            child: Center(
              child: Text(
                "[Graphic Here]",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 170,
              ),
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _index == 0
                        ? Color.fromRGBO(54, 191, 54, 2)
                        : Colors.grey),
                height: 15,
                width: 15,
              ),
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _index == 1
                        ? Color.fromRGBO(54, 191, 54, 2)
                        : Colors.grey),
                height: 15,
                width: 15,
              ),
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _index == 2
                        ? Color.fromRGBO(54, 191, 54, 2)
                        : Colors.grey),
                height: 15,
                width: 15,
              ),
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _index == 3
                        ? Color.fromRGBO(54, 191, 54, 2)
                        : Colors.grey),
                height: 15,
                width: 15,
              ),
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _index == 4
                        ? Color.fromRGBO(54, 191, 54, 2)
                        : Colors.grey),
                height: 15,
                width: 15,
              ),
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _index == 5
                        ? Color.fromRGBO(54, 191, 54, 2)
                        : Colors.grey),
                height: 15,
                width: 15,
              ),
            ],
          ),
          SizedBox(
            height: 35,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 20,
              ),
              SizedBox(
                width: 180,
                height: 50,
                child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.white)),
                    color: Colors.white,
                    child: Text(
                      'Learn more',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {}),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15),
              ),
              SizedBox(
                width: 180,
                height: 50,
                child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side:
                            BorderSide(color: Color.fromRGBO(54, 191, 54, 2))),
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
                        return Login();
                      }));
                    }),
              ),
            ],
          )
        ],
      ),
    );
  }
}

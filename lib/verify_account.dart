import 'package:dinnerApp/new_password.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class VerifyAccount extends StatefulWidget {
  @override
  _VerifyAccount createState() {
    return _VerifyAccount();
  }
}

class _VerifyAccount extends State<VerifyAccount> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              SizedBox(
                height: 100,
                width: 5,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back,
                  size: 35,
                  color: Colors.black,
                ),
              )
            ],
          ),
          Center(
            child: Image.asset('ac.png'),
          ),
          SizedBox(
            height: 5,
          ),
          Center(
            child: Text(
              'Verify Account',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 38,
              ),
              Text(
                '..........',
                style: TextStyle(color: Colors.black, fontSize: 35),
              ),
              SizedBox(
                width: 190,
              ),
              Icon(
                Icons.remove_red_eye,
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 40,
              ),
              Container(
                width: 320,
                height: 2,
                decoration:
                BoxDecoration(color: Color.fromRGBO(204, 204, 204, 2)),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 330,
            height: 65,
            child: RaisedButton(
              color: Color.fromRGBO(54, 191, 54, 2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(color: Color.fromRGBO(54, 191, 54, 2)),
              ),
              child: Text(
                'Verify',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return NewPassword();
                }));
              },
            ),
          )
        ],
      ),
    );
  }
}

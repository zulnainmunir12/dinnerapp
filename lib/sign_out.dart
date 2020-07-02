import 'package:dinnerApp/discover.png.dart';
import 'package:dinnerApp/send_bill.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SignOut extends StatefulWidget {
  @override
  _SignOut createState() {
    return _SignOut();
  }
}

class _SignOut extends State<SignOut> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(68, 68, 68, 2),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 543,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 140,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(25))),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 25,
                ),
                Center(
                  child: Text(
                    'Sure you want to sign out?',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                      width: 180,
                      height: 42,
                      child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0),
                              side: BorderSide(
                                  color: Color.fromRGBO(54, 191, 54, 2))),
                          color: Color.fromRGBO(54, 191, 54, 2),
                          child: Text(
                            'No',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>DiscoverPage()));
                          }),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    SizedBox(
                      width: 180,
                      height: 42,
                      child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0),
                              side: BorderSide(color: Colors.white)),
                          color: Colors.white,
                          child: Text(
                            'Yes',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder:
                                (context){
                              return SendBill();
                            }));
                          }),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

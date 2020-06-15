import 'package:dinnerApp/details.dart';
import 'package:dinnerApp/nav_menu.dart';
import 'package:dinnerApp/sign_out.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class AccountDetail extends StatefulWidget {
  _Detail createState() {
    return _Detail();
  }
}

class _Detail extends State<AccountDetail> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.height,
            height: 190,
            decoration: BoxDecoration(color: Color.fromRGBO(93, 94, 93, 2)),
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 5,
                ),
                Image.asset(
                  'g.png',
                  width: 90,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 72,
                    ),
                    Text(
                      'John D.',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      'Business Owner',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    )
                  ],
                ),
                SizedBox(
                  width: 130,
                ),
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(54, 191, 54, 2),
                      shape: BoxShape.circle),
                  child: Center(
                      child: Text(
                        '2',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                ),
                IconButton(
                  icon: Image.asset(
                    'bell.png',
                    height: 25,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 380,
            height: 60,
            decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: Image.asset(
                    'mall.png',
                    color: Color.fromRGBO(94, 93, 94, 2),
                  ),
                  onPressed: (){Navigator.push(
                      context, MaterialPageRoute(builder: (context){
                    return NavMenu();
                  }));},
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  'Manage Eateries',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(94, 93, 94, 2)),
                )
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            width: 380,
            height: 60,
            decoration: BoxDecoration(
                color: Color.fromRGBO(175, 232, 175, 100),
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: Image.asset(
                    'account.png',
                    color: Color.fromRGBO(54, 191, 54, 2),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context){
                          return Details();
                        }
                    ));
                  },
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  'Account Details',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(54, 191, 54, 2)),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                  return SignOut();
                }));
                },
                child: Text(
                  'Sign out',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

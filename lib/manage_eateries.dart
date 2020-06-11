import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ManageEateries extends StatefulWidget {
  _Manage createState() {
    return _Manage();
  }
}

class _Manage extends State<ManageEateries> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
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
                    width: 33,
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
                  color: Color.fromRGBO(175, 232, 175, 100),
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Image.asset('mall.png'),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Manage Eateries',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(54, 191, 54, 2)),
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
                  color: Colors.white70,
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Image.asset('account.png'),
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Account Details',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(93, 94, 93, 2)),
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
                  onPressed: () {},
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
      ),
      appBar: AppBar(
        iconTheme: new IconThemeData(color: Color.fromRGBO(54, 191, 54, 2)),
        backgroundColor: Colors.white,
        title: Text(
          'Manage Eateries',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                Icons.search,
                color: Color.fromRGBO(54, 191, 54, 2),
              ),
              IconButton(
                icon: Image.asset(
                  'bell.png',
                  color: Color.fromRGBO(54, 191, 54, 2),
                ),
              )
            ],
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
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
                            color: Color.fromRGBO(238, 238, 238, 2),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        enabledBorder: UnderlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                            borderSide: BorderSide(
                                color: Color.fromRGBO(238, 238, 238, 2))),
                        prefixIcon: Icon(
                          Icons.search,
                        ),
                        hintText: 'Search eateries',
                        hintStyle:
                        TextStyle(fontSize: 20, color: Colors.black45)),
                  ),
                )
              ],
            ),
          ),
          Center(
            child: Container(
              width: 320,
              height: 220,
              decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    'r.png',
                    fit: BoxFit.fill,
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'The Rails',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '23 Rail Street, Newport, PO305QU',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(54, 191, 54, 2)),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Published',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      Text(
                        'Update: 00/00/00',
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

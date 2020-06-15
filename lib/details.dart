import 'package:dinnerApp/no_booking.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Details extends StatefulWidget {
  @override
  _Details createState() {
    return _Details();
  }
}

class _Details extends State<Details> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            Column(
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
                        width: 30,
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
                  height: 10,
                ),
                Container(
                  width: 350,
                  height: 60,
                  decoration: BoxDecoration(color: Colors.white70),
                  child: Row(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          size: 30,
                          color: Color.fromRGBO(93, 94, 93, 2),
                        ),
                        onPressed: () {},
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Manage Eateries',
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
                Container(
                  width: 380,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(175, 232, 175, 100),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 5,
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.dashboard,
                          color: Color.fromRGBO(54, 191, 54, 2),
                        ),
                        onPressed: () {},
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Dash Board',
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
                    SizedBox(
                      width: 5,
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.calendar_today,
                        color: Color.fromRGBO(93, 94, 93, 2),
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Booking',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(93, 94, 93, 2),
                          fontSize: 20),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 350,
                  height: 60,
                  decoration: BoxDecoration(color: Colors.white70),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 6,
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.donut_large,
                          size: 30,
                          color: Color.fromRGBO(93, 94, 93, 2),
                        ),
                        onPressed: () {},
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Analytics',
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
                    SizedBox(
                      width: 10,
                    ),
                    IconButton(
                      icon: Image.asset(
                        'f.png',
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      'Eatery Presence',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(93, 94, 93, 2)),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.arrow_drop_up,
                        color: Color.fromRGBO(93, 94, 93, 2),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 60,
                        ),
                        FlatButton(onPressed: (){},
                          child: Text(
                            'Eatery Listing',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(93, 94, 93, 2)),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 62,
                        ),
                        FlatButton(onPressed: (){
                        },
                          child: Text(
                            'Booking slots',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(93, 94, 93, 2)),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 64,
                        ),
                        FlatButton(onPressed: (){

                        },
                          child: Text(
                            'Promote',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(93, 94, 93, 2)),
                          ),
                        )
                      ],
                    ),
                    Divider(thickness: 1)
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width:10,
                    ),
                    IconButton(
                      icon: Image.asset(
                        'rs.png',
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(
                      width: 22,
                    ),
                    Text(
                      'Financials',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(93, 94, 93, 2)),
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: Color.fromRGBO(93, 94, 93, 2),
                      ),
                      onPressed: () {
                      },
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 10,
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.supervisor_account,
                        color: Color.fromRGBO(93, 94, 93, 2),
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(
                      width: 22,
                    ),
                    Text(
                      'Staff Accounts',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(93, 94, 93, 2)),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 45,
                    ),
                    SizedBox(
                      width: 150,
                      height: 50,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: BorderSide(
                                color: Color.fromRGBO(54, 191, 54, 2))),
                        color: Color.fromRGBO(54, 191, 54, 2),
                        child: Text(
                          'Send Bill',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Colors.white),
                        ),
                        onPressed: () {},
                      ),
                    )
                  ],
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
          'Account Details',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(children: <Widget>[
        Column(
          children: <Widget>[
            Container(
                width: MediaQuery.of(context).size.width,
                height: 190,
                decoration: BoxDecoration(color: Color.fromRGBO(93, 94, 93, 2)),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 110,
                    ),
                    Image.asset('g.png'),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 65,
                        ),
                        Text(
                          'John Doe',
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          'Business Owner',
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        )
                      ],
                    )
                  ],
                )),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 60,
              decoration: BoxDecoration(color: Colors.white70),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: <Widget>[
                      FlatButton(
                        child: Text(
                          ''
                              'Details',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Color.fromRGBO(54, 191, 54, 2)),
                        ),
                        onPressed: () {},
                      ),
                      Container(
                        width: 140,
                        height: 5,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(54, 191, 54, 2)),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Column(
                    children: <Widget>[
                      FlatButton(
                        child: Text(
                          'Preferences',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
//                        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) {
//                          return Preference();
//                        }));},
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Name',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(54, 191, 54, 2)),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 12,
                ),
                IconButton(
                  icon: Image.asset('account.png', color: Colors.black),
                  onPressed: () {},
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'John Doe',
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
            Container(
              width: 355,
              child: Divider(
                thickness: 3,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Email Address',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(54, 191, 54, 2)),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 12,
                ),
                IconButton(
                  icon: Icon(Icons.alternate_email),
                  onPressed: () {},
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'JohnDoe@Email.com',
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
            Container(
              width: 355,
              child: Divider(
                thickness: 3,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 24,
                ),
                Text(
                  'Contact',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(54, 191, 54, 2)),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 16,
                ),
                IconButton(
                  icon: Icon(Icons.phone),
                  onPressed: () {},
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '0000 00000',
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
            Container(
              width: 355,
              child: Divider(
                thickness: 3,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 28,
                ),
                Text(
                  'Passwod',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(54, 191, 54, 2)),
                )
              ],
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 30,
                ),
                Text(
                  '.........',
                  style: TextStyle(fontSize: 28, color: Colors.grey),
                )
              ],
            ),
            SizedBox(
              height: 8,
            ),
            SizedBox(
              width: 350,
              height: 45,
              child: RaisedButton(
                color: Color.fromRGBO(54, 191, 54, 2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: BorderSide(color: Color.fromRGBO(54, 191, 54, 2)),
                ),
                child: Text(
                  'Save',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>NoBookingPage()));
                },
              ),
            )
          ],
        ),
      ]),
    );
  }
}

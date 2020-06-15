import 'package:dinnerApp/details.dart';
import 'package:dinnerApp/verify.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Preference extends StatefulWidget {
  @override
  _Preference createState() {
    return _Preference();
  }
}

class _Preference extends State<Preference> {
  bool _isChecked = false;
  bool _isValue = false;
  bool _isPress = false;
  bool _Press = false;

  void onChanged(bool value) {
    setState(() {
      _isChecked = value;
    });
  }

  void _onChanged(bool value) {
    if (value == 1) {
      setState(() {
        _isChecked = true;
        _isValue = _Press = _isPress = false;
      });
    } else if (value == 2) {
      setState(() {
        _isValue = true;
        _isChecked = _isPress = _Press = false;
      });
    }
    if (value == 3) {
      setState(() {
        _isPress = true;
        _isChecked = _Press = _isValue = false;
      });
    } else if (value == 4) {
      setState(() {
        _Press = true;
        _isValue = _isChecked = _isPress = false;
      });
    }
  }

  void i = 0;

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
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 190,
                  decoration:
                  BoxDecoration(color: Color.fromRGBO(93, 94, 93, 2)),
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
                    FlatButton(
                      child: Text(
                        'Details',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Colors.black),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context)=>Details()
                        ));
                      },
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Column(
                      children: <Widget>[
                        FlatButton(
                          child: Text(
                            'Preferences',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(54, 191, 54, 2)),
                          ),
                          onPressed: () {},
                        ),
                        Container(
                          width: 160,
                          height: 5,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(54, 191, 54, 2)),
                        )
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
                    'Email Preferences',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Checkbox(
                    value: _isChecked,
                    onChanged: (bool value) {
                      _onChanged(false);
                    },
                  ),
                  Text(
                    'General Marketing Emails',
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Checkbox(
                    value: _isValue,
                    onChanged: (bool value) {
                      _onChanged(false);
                    },
                  ),
                  Text(
                    'Features Announcements',
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Checkbox(
                    value: _isPress,
                    onChanged: (bool value) {
                      _onChanged(false);
                    },
                  ),
                  Text(
                    'Company News',
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Checkbox(
                    value: _Press,
                    onChanged: (bool value) {
                      _onChanged(false);
                    },
                  ),
                  Text(
                    'Helpful Tips and Resources',
                    style: TextStyle(fontSize: 18),
                  )
                ],
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
                    'Notifications',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Checkbox(
                    value: _isChecked,
                    onChanged: (bool value) {
                      _onChanged(false);
                    },
                  ),
                  Text(
                    'New Booking',
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Checkbox(
                    value: _isValue,
                    onChanged: (bool value) {
                      _onChanged(false);
                    },
                  ),
                  Text(
                    'Canceled Booking',
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Checkbox(
                    value: _isPress,
                    onChanged: (bool value) {
                      _onChanged(false);
                    },
                  ),
                  Text(
                    'Upcoming Booking',
                    style: TextStyle(fontSize: 18),
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
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                    return Verify();
                  }));
                  },
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

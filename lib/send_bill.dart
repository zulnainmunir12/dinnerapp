import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SendBill extends StatefulWidget {
  @override
  _Bill createState() {
    return _Bill();
  }
}

class _Bill extends State<SendBill> {
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
                  width: 18,
                ),
                IconButton(
                  icon: Icon(
                    Icons.dashboard,
                    color: Color.fromRGBO(54, 191, 54, 2),
                  ),
                  onPressed: () {
//                    Navigator.push(context, MaterialPageRoute(builder: (context){
//                    return DashBoard();
//                  }));
                    },
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
                width: 35,
              ),
              IconButton(
                icon: Icon(
                  Icons.calendar_today,
                  color: Color.fromRGBO(93, 94, 93, 2),
                ),
                onPressed: () {
//                  Navigator.push(context,
//                    MaterialPageRoute(builder: (context) {
//                      return Booking();
//                    }));
                },
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
                  onPressed: () {
//                    Navigator.push(context, MaterialPageRoute(builder: (context){
//                      return Analytics();
//                    }));
                  },
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
                width: 36,
              ),
              IconButton(
                icon: Image.asset(
                  'f.png',
                ),
                onPressed: () {},
              ),
              SizedBox(
                width: 22,
              ),
              Text(
                'Eatery Presence',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(93, 94, 93, 2)),
              ),
              SizedBox(
                width: 60,
              ),
              IconButton(
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: Color.fromRGBO(93, 94, 93, 2),
                ),
                onPressed: () {
//                  Navigator.push(context, MaterialPageRoute(
//                      builder: (context){
//                        return Bills();
//                      }
//                  ));
                },
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 36,
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
                width: 116,
              ),
              IconButton(
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: Color.fromRGBO(93, 94, 93, 2),
                ),
                onPressed: () {},
              ),
            ],
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 36,
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
                      side: BorderSide(color: Color.fromRGBO(54, 191, 54, 2))),
                  color: Color.fromRGBO(54, 191, 54, 2),
                  child: Text(
                    'Send Bill',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.white),
                  ),
                  onPressed: () {
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

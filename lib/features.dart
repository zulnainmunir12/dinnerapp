import 'package:dinnerApp/favorite.dart';
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
//          Center(
//
//          ),
//          Center(
//            child: Text(
//              'wherever you are',
//              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//            ),
//          ),
//          SizedBox(
//            height: 10,
//          ),
          Image.asset("feature_background.png"),
          SizedBox(
            height: 5,
          ),
          Text(
            'Discover the best eateries',
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xff2DC92D)),
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod.',
            style: TextStyle(
              fontSize: 18,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _index == 0
                        ? Color.fromRGBO(54, 191, 54, 2)
                        : Colors.grey),
                height: 10,
                width: 10,
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _index == 1
                        ? Color.fromRGBO(54, 191, 54, 2)
                        : Colors.grey),
                height: 10,
                width: 10,
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _index == 2
                        ? Color.fromRGBO(54, 191, 54, 2)
                        : Colors.grey),
                height: 10,
                width: 10,
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _index == 3
                        ? Color.fromRGBO(54, 191, 54, 2)
                        : Colors.grey),
                height: 10,
                width: 10,
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _index == 4
                        ? Color.fromRGBO(54, 191, 54, 2)
                        : Colors.grey),
                height: 10,
                width: 10,
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _index == 5
                        ? Color.fromRGBO(54, 191, 54, 2)
                        : Colors.grey),
                height: 10,
                width: 10,
              ),
            ],
          ),
          Flexible(
            child: Container(),
          ),
          Center(
            child: SizedBox(
              width: 360,
              height: 50,
              child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      side: BorderSide(color: Color.fromRGBO(54, 191, 54, 2))),
                  color: Color.fromRGBO(54, 191, 54, 2),
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FavoritePage()));
                  }),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Center(
            child: SizedBox(
              width: 360,
              height: 50,
              child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      side: BorderSide(color: Colors.grey.withOpacity(0.5))),
                  color: Colors.white,
                  child: Text(
                    'Log in',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Login();
                    }));
                  }),
            ),
          ),
          SizedBox(
            height: 20,
          )
//          Row(
//            children: <Widget>[
//              SizedBox(
//                width: 20,
//              ),
//              SizedBox(
//                width: 180,
//                height: 50,
//                child: RaisedButton(
//                    shape: RoundedRectangleBorder(
//                        borderRadius: BorderRadius.circular(10.0),
//                        side: BorderSide(color: Colors.white)),
//                    color: Colors.white,
//                    child: Text(
//                      'Learn more',
//                      style: TextStyle(
//                          color: Colors.black,
//                          fontSize: 25,
//                          fontWeight: FontWeight.bold),
//                    ),
//                    onPressed: () {
//                      Navigator.push(
//                          context,
//                          MaterialPageRoute(
//                              builder: (context) => FavoritePage()));
//                    }),
//              ),
//              Padding(
//                padding: EdgeInsets.only(left: 15),
//              ),
//              SizedBox(
//                width: 180,
//                height: 50,
//                child: RaisedButton(
//                    shape: RoundedRectangleBorder(
//                        borderRadius: BorderRadius.circular(10.0),
//                        side:
//                            BorderSide(color: Color.fromRGBO(54, 191, 54, 2))),
//                    color: Color.fromRGBO(54, 191, 54, 2),
//                    child: Text(
//                      'Log in',
//                      style: TextStyle(
//                          color: Colors.white,
//                          fontSize: 25,
//                          fontWeight: FontWeight.bold),
//                    ),
//                    onPressed: () {
//                      Navigator.push(context,
//                          MaterialPageRoute(builder: (context) {
//                        return Login();
//                      }));
//                    }),
//              ),
//            ],
//          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home), title: Text("Discover")),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_dining), title: Text("Eateries")),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text("Profile")),
        ],
        currentIndex: 2,
        selectedItemColor: Color(0xff2DC92D),
      ),
    );
  }
}

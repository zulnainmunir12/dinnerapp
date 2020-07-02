import 'package:dinnerApp/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DiscoverPage extends StatefulWidget {
  @override
  _DiscoverPageState createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  int _index = 0;
  List _tabs;

  Widget discoverTab() {
    return Container(
        width: MediaQuery
            .of(context)
            .size
            .width,
        height: MediaQuery
            .of(context)
            .size
            .height,
        child: ListView(
          children: <Widget>[
          SizedBox(
          height: 10,
        ),
        Row(
          children: <Widget>[
            SizedBox(
              width: 30,
            ),
            Container(
              child: Stack(
                children: <Widget>[
                  Positioned(
                    child: Container(
                      width: 350,
                      height: 350,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/background.png",
                            ),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 50,
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(67, 158, 67, 1)),
                      child: Center(
                          child: IconButton(
                            onPressed: (){Navigator.push(context, MaterialPageRoute(
                              builder: (context)=> Search()
                            ));},
                            icon: Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                          )),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Center(
          child: Column(
            children: <Widget>[
              Text(
                'Discover the best eateries',
                style: TextStyle(
                    color: Color.fromRGBO(67, 158, 67, 1),
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5,),
              Text(
                'Loren ipsum dolor sit amet, consectetur\nadipiscg elit, sed do eiusmod.',
                style: TextStyle(fontSize: 16),)
            ],
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
              height: 12,
              width: 12,
            ),
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _index == 1
                      ? Color.fromRGBO(54, 191, 54, 2)
                      : Colors.grey),
              height: 12,
              width: 12,
            ),
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _index == 2
                      ? Color.fromRGBO(54, 191, 54, 2)
                      : Colors.grey),
              height: 12,
              width: 12,
            ),
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _index == 3
                      ? Color.fromRGBO(54, 191, 54, 2)
                      : Colors.grey),
              height: 12,
              width: 12,
            ),
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _index == 4
                      ? Color.fromRGBO(54, 191, 54, 2)
                      : Colors.grey),
              height: 12,
              width: 12,
            ),
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _index == 5
                      ? Color.fromRGBO(54, 191, 54, 2)
                      : Colors.grey),
              height: 12,
              width: 12,
            ),
          ],
        ),
        Padding(
        padding: const EdgeInsets.only(bottom: 120),
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
    fontSize: 25,
    fontWeight: FontWeight.bold),
    ),
    onPressed: () {
    }),
    ),
    ),
    SizedBox(height: 15,),
    Center(
    child: SizedBox(
    width: 360,
    height: 50,
    child: RaisedButton(
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(5.0),
    side: BorderSide(color: Colors.grey.withOpacity(0.5))),
    color: Colors.white,
    child: Text(
    'Log in',
    style: TextStyle(
    color: Colors.black,
    fontSize: 25,
    fontWeight: FontWeight.bold),
    ),
    onPressed: () {}),
    ),
    ),

    ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    _tabs = [
      discoverTab(),
//      WhereToEatPage(), AccountDetail()
    ];
    return new Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            FlatButton(
              child: Text("Favorite"),
              onPressed: () => Navigator.pushNamed(context, "/favorite"),
            ),
            FlatButton(
              child: Text("Bookings"),
              onPressed: () => Navigator.pushNamed(context, "/noBooking"),
            ),
            FlatButton(
              child: Text("Reciepts"),
              onPressed: () => Navigator.pushNamed(context, "/reciepts"),
            ),
            FlatButton(
              child: Text("Reciept detail"),
              onPressed: () => Navigator.pushNamed(context, "/recieptDetail"),
            ),
            FlatButton(
              child: Text("Booking detail"),
              onPressed: () => Navigator.pushNamed(context, "/single"),
            ),
            FlatButton(
              child: Text("Pin Code"),
              onPressed: () => Navigator.pushNamed(context, "/code"),
            ),
            FlatButton(
              child: Text("Add new place"),
              onPressed: () => Navigator.pushNamed(context, "/newPlace"),
            ),
            FlatButton(
              child: Text("Feedback"),
              onPressed: () => Navigator.pushNamed(context, "/feedback"),
            ),
            FlatButton(
              child: Text("No Favorite"),
              onPressed: () => Navigator.pushNamed(context, "/noFavorite"),
            ),
            FlatButton(
              child: Text("Notifications"),
              onPressed: () => Navigator.pushNamed(context, "/notifications"),
            ),
            FlatButton(
              child: Text("Update"),
              onPressed: () => Navigator.pushNamed(context, "/update"),
            ),
            FlatButton(
              child: Text("Claim"),
              onPressed: () => Navigator.pushNamed(context, "/claim"),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      appBar: _index == 0
          ? PreferredSize(
        preferredSize: Size.fromHeight(0.0),
        child: Container(),
      )
          : _index == 2
          ? AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color.fromRGBO(54, 191, 54, 1.0),
          ),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Colors.white,
        title: Text("Hi, John! 👋"),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.add_alert,
              color: Color.fromRGBO(54, 191, 54, 1.0),
            ),
            onPressed: () =>
                Navigator.pushNamed(context, "/settings"),
          ),
        ],
      )
          : PreferredSize(
          preferredSize:
          Size.fromHeight(105.0), // here the desired height
          child: Column(
            children: <Widget>[
              AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                title: Text("Where to eat"),
                actions: <Widget>[
                  IconButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, "/favorite"),
                    icon: Icon(
                      Icons.search,
                      color: Color.fromRGBO(67, 158, 67, 1),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.map,
                      color: Color.fromRGBO(67, 158, 67, 1),
                    ),
                  ),
                  IconButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, "/filter"),
                    icon: Icon(
                      Icons.filter_list,
                      color: Color.fromRGBO(67, 158, 67, 1),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    padding: EdgeInsets.all(5),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.people),
                        SizedBox(
                          width: 5,
                        ),
                        Text("2"),
                        SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.calendar_today),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Today"),
                        Icon(Icons.access_time),
                        SizedBox(
                          width: 5,
                        ),
                        Text("12:30"),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey[300])),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    padding: EdgeInsets.symmetric(
                        vertical: 5, horizontal: 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(Icons.location_on),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Near Me",
                          style: TextStyle(
                            color: Color.fromRGBO(67, 158, 67, 1),
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey[300])),
                  ),
                ],
              )
            ],
          )),
      body: _tabs[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text(
              'Discover',
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.local_dining),
            title: new Text(
              'Eateries',
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text(
                'Profile',
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                ),
              )),
        ],
        onTap: (val) {
          setState(() {
            _index = val;
          });
        },
      ),
    );
  }
}

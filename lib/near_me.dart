import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NearMePage extends StatefulWidget {
  @override
  _NearMePageState createState() => _NearMePageState();
}

class _NearMePageState extends State<NearMePage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(105.0), // here the desired height
          child: Column(
            children: <Widget>[
              AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                title: Text(
                  "Where to eat",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                actions: <Widget>[
                  Row(
                    children: <Widget>[
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.room,
                          color: Colors.grey.withOpacity(0.9),
                        ),
                      ),
                      Text(
                        'Newpor',
                        style: TextStyle(
                            color: Colors.grey.withOpacity(0.9), fontSize: 16),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: Colors.grey.withOpacity(0.9),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 70),
                    padding: EdgeInsets.all(5),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        SizedBox(
                          width: 20,
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
                          width: 40,
                        ),
                        Icon(Icons.calendar_today),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Today"),
                        SizedBox(
                          width: 40,
                        ),
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
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey[300])),
                  ),
                ],
              )
            ],
          )),
      body: Stack(children: <Widget>[
        Container(
            color: Colors.grey[100],
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Container(
                    margin: EdgeInsets.only(left: 15),
                    width: MediaQuery.of(context).size.width,
                    height: 40,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: InkWell(
                              onTap: () {},
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Icon(
                                    Icons.access_time,
                                    size: 15,
                                    color: Colors.grey.withOpacity(0.7),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Open",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                        color: Colors.grey.withOpacity(0.9)),
                                  )
                                ],
                              ),
                            )),
                        Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: InkWell(
                                onTap: () {},
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.directions_car,
                                      color: Colors.black,
                                      size: 15,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Car",
                                      style: TextStyle(
                                          color: Colors.black.withOpacity(0.3),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18),
                                    ),
                                  ],
                                ))),
                        Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: InkWell(
                                onTap: () {},
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.filter_hdr,
                                      size: 15,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Scenic",
                                      style: TextStyle(
                                          color: Colors.black.withOpacity(0.3),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18),
                                    ),
                                  ],
                                ))),
                        Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: InkWell(
                                onTap: () {},
                                child: Text(
                                  "New",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ))),
                        Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: InkWell(
                                onTap: () {},
                                child: Text(
                                  "Young Family",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ))),
                        Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: InkWell(
                                onTap: () {},
                                child: Text(
                                  "Meetings",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ))),
                      ],
                    )),
                Container(
                    height: 400,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Stack(
                            children: <Widget>[
                              Image.asset(
                                "rails.png",
                                width: MediaQuery.of(context).size.width,
                                fit: BoxFit.fitWidth,
                              ),
                              Positioned(
                                top: 20,
                                left: 30,
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color:
                                              Color.fromRGBO(255, 145, 35, 1)),
                                      padding: EdgeInsets.all(5),
                                      child: Text(
                                        "NEW",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                  top: 20,
                                  right: 30,
                                  child: Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(67, 158, 67, 1),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text("up to",
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white)),
                                      ],
                                    ),
                                  ))
                            ],
                          ),
                          Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "The Rails",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                      SizedBox(
                                        width: 210,
                                      ),
                                      Icon(
                                        Icons.favorite_border,
                                        color: Color.fromRGBO(67, 158, 67, 1),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.restaurant,
                                        color: Colors.grey.withOpacity(0.9),
                                        size: 15,
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Text(
                                        "British",
                                        style: TextStyle(
                                            color:
                                                Colors.black.withOpacity(0.9),
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Icon(
                                        Icons.room,
                                        color: Colors.grey.withOpacity(0.9),
                                        size: 15,
                                      ),
                                      Text(
                                        'Newport',
                                        style: TextStyle(
                                            color:
                                                Colors.black.withOpacity(0.9),
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        width: 150,
                                      ),
                                      Text("£££"),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.star,
                                        size: 15,
                                        color: Color.fromRGBO(67, 158, 67, 1),
                                      ),
                                      Text(" 4.0, (123)"),
                                      SizedBox(
                                        width: 2,
                                      ),
                                      CircleAvatar(
                                        backgroundColor: Colors.orange,
                                        child: Text("A"),
                                        radius: 12,
                                      ),
                                      CircleAvatar(
                                        backgroundColor: Colors.greenAccent,
                                        child: Text("A"),
                                        radius: 12,
                                      ),
                                      CircleAvatar(
                                        backgroundColor: Colors.pink,
                                        child: Text("A"),
                                        radius: 12,
                                      ),
                                      CircleAvatar(
                                        backgroundColor: Colors.deepPurple,
                                        child: Text("A"),
                                        radius: 12,
                                      ),
                                      CircleAvatar(
                                        backgroundColor: Colors.purple,
                                        child: Text("A"),
                                        radius: 12,
                                      ),
                                      CircleAvatar(
                                        child: Text("A"),
                                        radius: 12,
                                      ),
                                      Flexible(
                                        child: Container(),
                                      ),
                                      Text(
                                        "10 min",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 20),
                                      ),
                                      Icon(
                                        Icons.near_me,
                                        size: 15,
                                        color: Colors.grey,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Container(
                                        height: 40,
                                        width: 90,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            color:
                                                Color.fromRGBO(67, 158, 67, 1)),
                                        child: Center(
                                            child: Text(
                                          '18:00',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 17),
                                        )),
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Column(
                                        children: <Widget>[
                                          Container(
                                            height: 40,
                                            width: 90,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    topLeft: Radius.circular(8),
                                                    topRight:
                                                        Radius.circular(8)),
                                                color: Color.fromRGBO(
                                                    67, 158, 67, 1)),
                                            child: Center(
                                                child: Text(
                                              '18:00',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 17),
                                            )),
                                          ),
                                          Container(
                                            height: 40,
                                            width: 90,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(8),
                                                    bottomRight:
                                                        Radius.circular(8)),
                                                color: Color.fromRGBO(
                                                        67, 158, 67, 1)
                                                    .withOpacity(0.3)),
                                            child: Center(
                                                child: Text(
                                              '50%',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 17),
                                            )),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Column(
                                        children: <Widget>[
                                          Container(
                                            height: 40,
                                            width: 90,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    topLeft: Radius.circular(8),
                                                    topRight:
                                                        Radius.circular(8)),
                                                color: Colors.black
                                                    .withOpacity(0.2)),
                                          ),
                                          Container(
                                            height: 40,
                                            width: 90,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(8),
                                                    bottomRight:
                                                        Radius.circular(8)),
                                                color: Colors.black
                                                    .withOpacity(0.7)),
                                            child: Center(
                                                child: Text(
                                              'Sold',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 17),
                                            )),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                        ],
                      ),
                    )),
              ],
            )),
        Positioned(
          bottom: 5,
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(67, 158, 67, 1),
                      shape: BoxShape.circle),
                  child: Icon(
                    Icons.search,
                    size: 15,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  onPressed: () {},
                  color: Color.fromRGBO(67, 158, 67, 1),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.map,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Map",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(67, 158, 67, 1),
                      shape: BoxShape.circle),
                  child: Icon(
                    Icons.filter_list,
                    size: 15,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            width: MediaQuery.of(context).size.width,
          ),
        )
      ]),
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

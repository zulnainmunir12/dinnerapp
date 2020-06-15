import 'package:dinnerApp/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WhereToEatPage extends StatefulWidget {
  @override
  _WhereToEatPageState createState() => _WhereToEatPageState();
}

class _WhereToEatPageState extends State<WhereToEatPage> {
  bool map = false;

  Widget mapWidget() {
    return Stack(children: <Widget>[
      Container(
          color: Colors.grey[100],
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ListView(children: <Widget>[
            SizedBox(
              height: 10,
            ),
//            Container(
//                margin: EdgeInsets.only(left: 15),
//                width: MediaQuery.of(context).size.width,
//                height: 40,
//                child: ListView(
//                  scrollDirection: Axis.horizontal,
//                  children: <Widget>[
//                    Container(
//                        padding: EdgeInsets.all(10),
//                        decoration: BoxDecoration(
//                            color: Colors.white,
//                            borderRadius: BorderRadius.circular(20)),
//                        child: InkWell(
//                          onTap: () {},
//                          child: Row(
//                            mainAxisSize: MainAxisSize.min,
//                            children: <Widget>[
//                              Icon(
//                                Icons.filter_list,
//                                size: 15,
//                              ),
//                              Text(
//                                " Filter",
//                                style: TextStyle(
//                                    fontWeight: FontWeight.bold, fontSize: 18),
//                              )
//                            ],
//                          ),
//                        )),
//                    Container(
//                        padding: EdgeInsets.all(10),
//                        margin: EdgeInsets.only(left: 10),
//                        decoration: BoxDecoration(
//                            color: Colors.white,
//                            borderRadius: BorderRadius.circular(20)),
//                        child: InkWell(
//                            onTap: () {},
//                            child: Text(
//                              "Open Now",
//                              style: TextStyle(
//                                  fontWeight: FontWeight.bold, fontSize: 18),
//                            ))),
//                    Container(
//                        padding: EdgeInsets.all(10),
//                        margin: EdgeInsets.only(left: 10),
//                        decoration: BoxDecoration(
//                            color: Colors.white,
//                            borderRadius: BorderRadius.circular(20)),
//                        child: InkWell(
//                            onTap: () {},
//                            child: Text(
//                              "Parking",
//                              style: TextStyle(
//                                  fontWeight: FontWeight.bold, fontSize: 18),
//                            ))),
//                    Container(
//                        padding: EdgeInsets.all(10),
//                        margin: EdgeInsets.only(left: 10),
//                        decoration: BoxDecoration(
//                            color: Colors.white,
//                            borderRadius: BorderRadius.circular(20)),
//                        child: InkWell(
//                            onTap: () {},
//                            child: Text(
//                              "New",
//                              style: TextStyle(
//                                  fontWeight: FontWeight.bold, fontSize: 18),
//                            ))),
//                    Container(
//                        padding: EdgeInsets.all(10),
//                        margin: EdgeInsets.only(left: 10),
//                        decoration: BoxDecoration(
//                            color: Colors.white,
//                            borderRadius: BorderRadius.circular(20)),
//                        child: InkWell(
//                            onTap: () {},
//                            child: Text(
//                              "Young Family",
//                              style: TextStyle(
//                                  fontWeight: FontWeight.bold, fontSize: 18),
//                            ))),
//                    Container(
//                        padding: EdgeInsets.all(10),
//                        margin: EdgeInsets.only(left: 10),
//                        decoration: BoxDecoration(
//                            color: Colors.white,
//                            borderRadius: BorderRadius.circular(20)),
//                        child: InkWell(
//                            onTap: () {},
//                            child: Text(
//                              "Meetings",
//                              style: TextStyle(
//                                  fontWeight: FontWeight.bold, fontSize: 18),
//                            ))),
//                  ],
//                )),
          ])),
      Positioned(
        bottom: 30,
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(67, 158, 67, 1),
                      shape: BoxShape.circle),
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Search())),
              ),
              SizedBox(
                width: 10,
              ),
              RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                onPressed: () {
                  setState(() {
                    map = false;
                  });
                },
                color: Color.fromRGBO(67, 158, 67, 1),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.list,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "List",
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
    ]);
  }

  Widget listWidget() {
    return Stack(children: <Widget>[
      Container(
          color: Colors.grey[100],
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
//              Container(
//                  margin: EdgeInsets.only(left: 15),
//                  width: MediaQuery.of(context).size.width,
//                  height: 40,
//                  child: ListView(
//                    scrollDirection: Axis.horizontal,
//                    children: <Widget>[
//                      Container(
//                          padding: EdgeInsets.all(10),
//                          decoration: BoxDecoration(
//                              color: Colors.white,
//                              borderRadius: BorderRadius.circular(20)),
//                          child: InkWell(
//                            onTap: () {},
//                            child: Row(
//                              mainAxisSize: MainAxisSize.min,
//                              children: <Widget>[
//                                Icon(
//                                  Icons.filter_list,
//                                  size: 15,
//                                ),
//                                Text(
//                                  " Filter",
//                                  style: TextStyle(
//                                      fontWeight: FontWeight.bold,
//                                      fontSize: 18),
//                                )
//                              ],
//                            ),
//                          )),
//                      Container(
//                          padding: EdgeInsets.all(10),
//                          margin: EdgeInsets.only(left: 10),
//                          decoration: BoxDecoration(
//                              color: Colors.white,
//                              borderRadius: BorderRadius.circular(20)),
//                          child: InkWell(
//                              onTap: () {},
//                              child: Text(
//                                "Open Now",
//                                style: TextStyle(
//                                    fontWeight: FontWeight.bold, fontSize: 18),
//                              ))),
//                      Container(
//                          padding: EdgeInsets.all(10),
//                          margin: EdgeInsets.only(left: 10),
//                          decoration: BoxDecoration(
//                              color: Colors.white,
//                              borderRadius: BorderRadius.circular(20)),
//                          child: InkWell(
//                              onTap: () {},
//                              child: Text(
//                                "Parking",
//                                style: TextStyle(
//                                    fontWeight: FontWeight.bold, fontSize: 18),
//                              ))),
//                      Container(
//                          padding: EdgeInsets.all(10),
//                          margin: EdgeInsets.only(left: 10),
//                          decoration: BoxDecoration(
//                              color: Colors.white,
//                              borderRadius: BorderRadius.circular(20)),
//                          child: InkWell(
//                              onTap: () {},
//                              child: Text(
//                                "New",
//                                style: TextStyle(
//                                    fontWeight: FontWeight.bold, fontSize: 18),
//                              ))),
//                      Container(
//                          padding: EdgeInsets.all(10),
//                          margin: EdgeInsets.only(left: 10),
//                          decoration: BoxDecoration(
//                              color: Colors.white,
//                              borderRadius: BorderRadius.circular(20)),
//                          child: InkWell(
//                              onTap: () {},
//                              child: Text(
//                                "Young Family",
//                                style: TextStyle(
//                                    fontWeight: FontWeight.bold, fontSize: 18),
//                              ))),
//                      Container(
//                          padding: EdgeInsets.all(10),
//                          margin: EdgeInsets.only(left: 10),
//                          decoration: BoxDecoration(
//                              color: Colors.white,
//                              borderRadius: BorderRadius.circular(20)),
//                          child: InkWell(
//                              onTap: () {},
//                              child: Text(
//                                "Meetings",
//                                style: TextStyle(
//                                    fontWeight: FontWeight.bold, fontSize: 18),
//                              ))),
//                    ],
//                  )),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext builder) {
                        return Scaffold(
                            body: Container(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        "People",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Day",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Time",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  )),
                              SizedBox(
                                height: 15,
                              ),
                              Expanded(
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                        child: CupertinoPicker(
                                      magnification: 1.5,
                                      backgroundColor: Colors.white,
                                      children: <Widget>[
                                        Text(
                                          "1 person",
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ],
                                      itemExtent: 40, //height of each item
                                      looping: true,
                                      onSelectedItemChanged: (int index) {
//                               selectitem = index;
                                      },
                                    )),
                                    Expanded(
                                        child: CupertinoPicker(
                                      magnification: 1.5,
                                      backgroundColor: Colors.white,
                                      children: <Widget>[
                                        Text(
                                          "Tomorrow",
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ],
                                      itemExtent: 40, //height of each item
                                      looping: true,
                                      onSelectedItemChanged: (int index) {
//                               selectitem = index;
                                      },
                                    )),
                                    Expanded(
                                        child: CupertinoPicker(
                                      magnification: 1.5,
                                      backgroundColor: Colors.white,
                                      children: <Widget>[
                                        Text(
                                          "18:00",
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ],
                                      itemExtent: 40, //height of each item
                                      looping: true,
                                      onSelectedItemChanged: (int index) {
//                               selectitem = index;
                                      },
                                    )),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ));
                      });
                },
                child: Container(
                    height: 300,
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
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      padding: EdgeInsets.all(5),
                                      child: Text(
                                        "NEW",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 10),
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromRGBO(255, 145, 35, 1),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      padding: EdgeInsets.all(5),
                                      child: Text(
                                        "Opens at 5.30pm",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
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
                                        Text("SAVE\nUPTO",
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.white)),
                                        Text("50%",
                                            style: TextStyle(
                                                fontSize: 22,
                                                color: Colors.white))
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
                                  Text(
                                    "The Rails",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text("British"),
                                      VerticalDivider(),
                                      Icon(
                                        Icons.star,
                                        size: 15,
                                        color: Color.fromRGBO(67, 158, 67, 1),
                                      ),
                                      Text(" 4.0, (123)"),
                                      VerticalDivider(),
                                      Text("£££"),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      CircleAvatar(
                                        child: Text("A"),
                                        radius: 12,
                                      ),
                                      CircleAvatar(
                                        child: Text("A"),
                                        radius: 12,
                                      ),
                                      CircleAvatar(
                                        child: Text("A"),
                                        radius: 12,
                                      ),
                                      CircleAvatar(
                                        child: Text("A"),
                                        radius: 12,
                                      ),
                                      CircleAvatar(
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
                                        Icons.directions_walk,
                                        size: 15,
                                        color: Colors.grey,
                                      )
                                    ],
                                  ),
                                ],
                              )),
                        ],
                      ),
                    )),
              ),
              Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    color: Colors.grey[300],
                  )),
              Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "How much do you like our app?",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.insert_emoticon),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.insert_emoticon),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.insert_emoticon),
                        ],
                      )
                    ],
                  )),
              Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    color: Colors.grey[300],
                  )),
              Container(
                  color: Color(0xffCEF3CE),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Found somewhere new? ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
//                    Text(
//                      "We are discovering and adding new eateries every day, if you know of somewhere, let us know! 😊",
//                      textAlign: TextAlign.center,
//                    ),
                      RaisedButton(
                        color: Color(0xff2DC92D),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          "Add eatery",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ))
            ],
          )),
      Positioned(
        bottom: 30,
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(67, 158, 67, 1),
                      shape: BoxShape.circle),
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Search())),
              ),
              SizedBox(
                width: 10,
              ),
              RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                onPressed: () {
                  setState(() {
                    map = true;
                  });
                },
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
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: map ? mapWidget() : listWidget(),
    );
  }
}

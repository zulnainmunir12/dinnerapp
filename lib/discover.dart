//import 'package:dining_app/account.dart';
//import 'package:dining_app/discovery/near_me.dart';
//import 'package:dining_app/discovery/search.dart';
import 'package:dinnerApp/where_to_eat.dart';
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
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: <Widget>[
            ClipRRect(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(50)),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "background.png",
                        ),
                        fit: BoxFit.fitWidth),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    color: Color(0xff2DC92D).withOpacity(0.6),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Good Evening",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 25),
                        ),
                        Text(
                          "FInding greate places to eat\n has never been so easy",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                )),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ButtonTheme(
                minWidth: 250,
                height: 40,
                child: RaisedButton(
                  color: Color.fromRGBO(54, 191, 54, 1.0),
                  onPressed: () {
                    Navigator.pushNamed(context, "/search");
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(
                        Icons.location_on,
                        color: Colors.white,
                      ),
                      Text(
                        "[Location]",
                        style: TextStyle(color: Colors.white),
                      ),
                      Icon(Icons.arrow_drop_down, color: Colors.white)
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  InkWell(
                    child: Card(
                      color: Colors.white,
                      child: Container(
                        height: 80,
                        width: 160,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.navigation,
                              color: Color.fromRGBO(54, 191, 54, 1.0),
                            ),
                            Text(
                              "Near Me",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            )
                          ],
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onTap: () => Navigator.pushNamed(context, "/near"),
                  ),
                  Card(
                    color: Colors.white,
                    child: Container(
                      height: 80,
                      width: 160,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.local_dining,
                            color: Color.fromRGBO(54, 191, 54, 1.0),
                          ),
                          Text(
                            "Dinner",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18),
                          )
                        ],
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )
                ],
              ),
            ),
//            Padding(
//                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//                child: Row(
//                  children: <Widget>[
//                    Icon(Icons.location_searching),
//                    SizedBox(
//                      width: 5,
//                    ),
//                    Text(
//                      "Explore [Location]",
//                      style:
//                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//                    )
//                  ],
//                )),
            Container(
                height: 100,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: SafeArea(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        color: Colors.grey[300],
                        child: Container(
                          child: Text(
                            "[Feature]",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          width: 100,
                          alignment: Alignment.bottomCenter,
                        ),
                      );
                    },
                  ),
                )),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                children: <Widget>[
//                  Icon(Icons.location_on),
                  Text(
                    "Find Nearby",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Flexible(child: Container()),
                  Icon(
                    Icons.arrow_forward,
                    color: Color.fromRGBO(67, 158, 67, 0.9),
                  )
                ],
              ),
            ),
            Container(
                height: 215,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Stack(children: <Widget>[
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Image.asset(
                              "rails.png",
                              height: 100,
                              width: MediaQuery.of(context).size.width * 0.8,
                              fit: BoxFit.fill,
                            ),
                            Container(
                                width: MediaQuery.of(context).size.width * 0.8,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          "The Rails",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                        Icon(
                                          Icons.favorite_border,
                                          color: Color(0xff2DC92D),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.local_dining,
                                          size: 16,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "British",
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.grey),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Icon(
                                          Icons.location_on,
                                          size: 16,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "Newport",
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.grey),
                                        ),
                                        Flexible(
                                          child: Container(),
                                        ),
                                        Text(
                                          "£££",
                                          style: TextStyle(color: Colors.grey),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.star,
                                          size: 16,
                                        ),
                                        Text(
                                          " 4.0, (123)",
                                          style: TextStyle(fontSize: 12),
                                        ),
                                        Flexible(
                                          child: Container(),
                                        ),
                                        Text(
                                          "1.5 mi",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 12),
                                        ),
                                        Icon(
                                          Icons.navigation,
                                          color: Colors.grey,
                                          size: 16,
                                        )
                                      ],
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 10,
                        left: 10,
                        child: Row(
                          children: <Widget>[
                            Text(
                              "10 min",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            Icon(
                              Icons.directions_walk,
                              size: 15,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                      Positioned(
                          top: 10,
                          right: 10,
                          child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(67, 158, 67, 1),
                                borderRadius: BorderRadius.circular(5)),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("SAVE\nUPTO",
                                    style: TextStyle(
                                        fontSize: 8, color: Colors.white)),
                                Text("50%",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white))
                              ],
                            ),
                          )),
                    ]),
                  ],
                )),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                children: <Widget>[
//                  Icon(Icons.calendar_today),
                  Text(
                    " Book a Table",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Flexible(child: Container()),
                  Icon(
                    Icons.arrow_forward,
                    color: Color.fromRGBO(67, 158, 67, 0.9),
                  )
                ],
              ),
            ),
            Container(
                height: 290,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Image.asset("rails.png"),
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
                                      Icon(Icons.star),
                                      Text(" 4.0, (123) British")
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Card(
                                        color: Color.fromRGBO(54, 191, 54, 1.0),
                                        child: Column(
                                          children: <Widget>[
                                            Center(
                                                child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 5, vertical: 5),
                                              child: Text(
                                                "16:30",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            )),
                                            Center(
                                                child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 5, vertical: 5),
                                              child: Text(
                                                "50%",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            )),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Column(children: <Widget>[
                                        Container(
                                            decoration: BoxDecoration(
                                                color: Color.fromRGBO(
                                                    54, 191, 54, 1.0),
                                                borderRadius:
                                                    BorderRadius.vertical(
                                                        top: Radius.circular(
                                                            5))),
                                            width: 60,
                                            child: Center(
                                                child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 5, vertical: 5),
                                              child: Text(
                                                "16:30",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ))),
                                        Container(
                                          width: 60,
                                          decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.vertical(
                                                      bottom:
                                                          Radius.circular(5))),
                                          child: Center(
                                              child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 5, vertical: 5),
                                            child: Text(
                                              "Booked",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          )),
                                        ),
                                      ]),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Card(
                                        color: Color.fromRGBO(54, 191, 54, 1.0),
                                        child: Center(
                                            child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 5, vertical: 5),
                                          child: Text(
                                            "16:30",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        )),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      SizedBox(
                                        width: 5,
                                      ),
                                    ],
                                  )
                                ],
                              )),
                        ],
                      ),
                    )
                  ],
                )),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                children: <Widget>[
//                  Icon(Icons.location_on),
                  Text(
                    "Cuisines",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
//                    Flexible(child: Container()),
//                    Icon(Icons.chevron_right)
                ],
              ),
            ),
            Container(
                height: 100,
                width: 100,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Stack(children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/background.png",
                          width: 100,
                          height: 150,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      Positioned(
                        bottom: 5,
                        child: Container(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("British",
                                    style: TextStyle(color: Colors.white)),
                              ]),
                          width: 100,
                        ),
                      )
                    ]),
                  ],
                )),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                children: <Widget>[
//                  Icon(Icons.location_on),
                  Text(
                    "Menu Options",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
//                    Flexible(child: Container()),
//                    Icon(Icons.chevron_right)
                ],
              ),
            ),
            Container(
                height: 100,
                width: 100,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(146, 199, 18, 1.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text("V",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                          Text("Vegeterian",
                              style: TextStyle(color: Colors.white))
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(146, 199, 18, 1.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text("V",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                          Text("Vegeterian",
                              style: TextStyle(color: Colors.white))
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(146, 199, 18, 1.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text("V",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                          Text("Vegeterian",
                              style: TextStyle(color: Colors.white))
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(146, 199, 18, 1.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text("V",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                          Text("Vegeterian",
                              style: TextStyle(color: Colors.white))
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(146, 199, 18, 1.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text("V",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                          Text("Vegeterian",
                              style: TextStyle(color: Colors.white))
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                )),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                children: <Widget>[
//                  Icon(Icons.location_on),
                  Text(
                    "Popular eateries",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Flexible(child: Container()),
                  Icon(
                    Icons.arrow_forward,
                    color: Color.fromRGBO(67, 158, 67, 0.9),
                  )
                ],
              ),
            ),
            Container(
                height: 215,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Stack(children: <Widget>[
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Image.asset(
                              "rails.png",
                              height: 100,
                              width: MediaQuery.of(context).size.width * 0.8,
                              fit: BoxFit.fill,
                            ),
                            Container(
                                width: MediaQuery.of(context).size.width * 0.8,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          "The Rails",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                        Icon(
                                          Icons.favorite_border,
                                          color: Color(0xff2DC92D),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.local_dining,
                                          size: 16,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "British",
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.grey),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Icon(
                                          Icons.location_on,
                                          size: 16,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "Newport",
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.grey),
                                        ),
                                        Flexible(
                                          child: Container(),
                                        ),
                                        Text(
                                          "£££",
                                          style: TextStyle(color: Colors.grey),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.star,
                                          size: 16,
                                        ),
                                        Text(
                                          " 4.0, (123)",
                                          style: TextStyle(fontSize: 12),
                                        ),
                                        Flexible(
                                          child: Container(),
                                        ),
                                        Text(
                                          "1.5 mi",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 12),
                                        ),
                                        Icon(
                                          Icons.navigation,
                                          color: Colors.grey,
                                          size: 16,
                                        )
                                      ],
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 10,
                        left: 10,
                        child: Row(
                          children: <Widget>[
                            Text(
                              "10 min",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            Icon(
                              Icons.directions_walk,
                              size: 15,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                      Positioned(
                          top: 10,
                          right: 10,
                          child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(67, 158, 67, 1),
                                borderRadius: BorderRadius.circular(5)),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("SAVE\nUPTO",
                                    style: TextStyle(
                                        fontSize: 8, color: Colors.white)),
                                Text("50%",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white))
                              ],
                            ),
                          )),
                    ]),
                  ],
                )),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                children: <Widget>[
//                  Icon(Icons.location_on),
                  Text(
                    "Tending eateries",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Flexible(child: Container()),
                  Icon(
                    Icons.arrow_forward,
                    color: Color.fromRGBO(67, 158, 67, 0.9),
                  )
                ],
              ),
            ),
            Container(
                height: 215,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Stack(children: <Widget>[
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Image.asset(
                              "rails.png",
                              height: 100,
                              width: MediaQuery.of(context).size.width * 0.8,
                              fit: BoxFit.fill,
                            ),
                            Container(
                                width: MediaQuery.of(context).size.width * 0.8,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          "The Rails",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                        Icon(
                                          Icons.favorite_border,
                                          color: Color(0xff2DC92D),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.local_dining,
                                          size: 16,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "British",
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.grey),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Icon(
                                          Icons.location_on,
                                          size: 16,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "Newport",
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.grey),
                                        ),
                                        Flexible(
                                          child: Container(),
                                        ),
                                        Text(
                                          "£££",
                                          style: TextStyle(color: Colors.grey),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.star,
                                          size: 16,
                                        ),
                                        Text(
                                          " 4.0, (123)",
                                          style: TextStyle(fontSize: 12),
                                        ),
                                        Flexible(
                                          child: Container(),
                                        ),
                                        Text(
                                          "1.5 mi",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 12),
                                        ),
                                        Icon(
                                          Icons.navigation,
                                          color: Colors.grey,
                                          size: 16,
                                        )
                                      ],
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 10,
                        left: 10,
                        child: Row(
                          children: <Widget>[
                            Text(
                              "10 min",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            Icon(
                              Icons.directions_walk,
                              size: 15,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                      Positioned(
                          top: 10,
                          right: 10,
                          child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(67, 158, 67, 1),
                                borderRadius: BorderRadius.circular(5)),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("SAVE\nUPTO",
                                    style: TextStyle(
                                        fontSize: 8, color: Colors.white)),
                                Text("50%",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white))
                              ],
                            ),
                          )),
                    ]),
                  ],
                )),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                children: <Widget>[
//                  Icon(Icons.location_on),
                  Text(
                    "Most booked",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Flexible(child: Container()),
                  Icon(
                    Icons.arrow_forward,
                    color: Color.fromRGBO(67, 158, 67, 0.9),
                  )
                ],
              ),
            ),
            Container(
                height: 215,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Stack(children: <Widget>[
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Image.asset(
                              "rails.png",
                              height: 100,
                              width: MediaQuery.of(context).size.width * 0.8,
                              fit: BoxFit.fill,
                            ),
                            Container(
                                width: MediaQuery.of(context).size.width * 0.8,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          "The Rails",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                        Icon(
                                          Icons.favorite_border,
                                          color: Color(0xff2DC92D),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.local_dining,
                                          size: 16,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "British",
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.grey),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Icon(
                                          Icons.location_on,
                                          size: 16,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "Newport",
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.grey),
                                        ),
                                        Flexible(
                                          child: Container(),
                                        ),
                                        Text(
                                          "£££",
                                          style: TextStyle(color: Colors.grey),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.star,
                                          size: 16,
                                        ),
                                        Text(
                                          " 4.0, (123)",
                                          style: TextStyle(fontSize: 12),
                                        ),
                                        Flexible(
                                          child: Container(),
                                        ),
                                        Text(
                                          "1.5 mi",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 12),
                                        ),
                                        Icon(
                                          Icons.navigation,
                                          color: Colors.grey,
                                          size: 16,
                                        )
                                      ],
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 10,
                        left: 10,
                        child: Row(
                          children: <Widget>[
                            Text(
                              "10 min",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            Icon(
                              Icons.directions_walk,
                              size: 15,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                      Positioned(
                          top: 10,
                          right: 10,
                          child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(67, 158, 67, 1),
                                borderRadius: BorderRadius.circular(5)),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("SAVE\nUPTO",
                                    style: TextStyle(
                                        fontSize: 8, color: Colors.white)),
                                Text("50%",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white))
                              ],
                            ),
                          )),
                    ]),
                  ],
                )),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                children: <Widget>[
//                  Icon(Icons.location_on),
                  Text(
                    "New eateries",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Flexible(child: Container()),
                  Icon(
                    Icons.arrow_forward,
                    color: Color.fromRGBO(67, 158, 67, 0.9),
                  )
                ],
              ),
            ),
            Container(
                height: 215,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Stack(children: <Widget>[
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Image.asset(
                              "rails.png",
                              height: 100,
                              width: MediaQuery.of(context).size.width * 0.8,
                              fit: BoxFit.fill,
                            ),
                            Container(
                                width: MediaQuery.of(context).size.width * 0.8,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          "The Rails",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                        Icon(
                                          Icons.favorite_border,
                                          color: Color(0xff2DC92D),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.local_dining,
                                          size: 16,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "British",
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.grey),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Icon(
                                          Icons.location_on,
                                          size: 16,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "Newport",
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.grey),
                                        ),
                                        Flexible(
                                          child: Container(),
                                        ),
                                        Text(
                                          "£££",
                                          style: TextStyle(color: Colors.grey),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.star,
                                          size: 16,
                                        ),
                                        Text(
                                          " 4.0, (123)",
                                          style: TextStyle(fontSize: 12),
                                        ),
                                        Flexible(
                                          child: Container(),
                                        ),
                                        Text(
                                          "1.5 mi",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 12),
                                        ),
                                        Icon(
                                          Icons.navigation,
                                          color: Colors.grey,
                                          size: 16,
                                        )
                                      ],
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 10,
                        left: 10,
                        child: Row(
                          children: <Widget>[
                            Text(
                              "10 min",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            Icon(
                              Icons.directions_walk,
                              size: 15,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                      Positioned(
                          top: 10,
                          right: 10,
                          child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(67, 158, 67, 1),
                                borderRadius: BorderRadius.circular(5)),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("SAVE\nUPTO",
                                    style: TextStyle(
                                        fontSize: 8, color: Colors.white)),
                                Text("50%",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white))
                              ],
                            ),
                          )),
                    ]),
                  ],
                )),
            Container(
                color: Color(0xffCEF3CE),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                child: Column(
                  children: <Widget>[
                    Text(
                      "Found somewhere new? ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
//                    Text(
//                      "We are discovering and adding new eateries every day, if you know of somewhere, let us know! 😊",
//                      textAlign: TextAlign.center,
//                    ),
                    RaisedButton(
                      color: Color(0xff2DC92D),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
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
        ));
  }

  @override
  Widget build(BuildContext context) {
    _tabs = [discoverTab(), WhereToEatPage(), Container()];
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
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "Where to eat",
                      style:
                      TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Flexible(
                      child: Container(),
                    ),
                    Icon(
                      Icons.location_on,
                      color: Colors.grey,
                    ),
                    Text(
                      "Newport",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.grey,
                    )
                  ],
                ),
                Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey)),
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(Icons.calendar_today),
                            Text("Thu, 25")
                          ],
                        ),
                        Container(
                          height: 20,
                          width: 1,
                          color: Colors.grey,
                        ),
                        Row(
                          children: <Widget>[
                            Icon(Icons.access_time),
                            Text("1:23")
                          ],
                        ),
                        Container(
                          height: 20,
                          width: 1,
                          color: Colors.grey,
                        ),
                        Row(
                          children: <Widget>[Icon(Icons.people), Text("1")],
                        ),
                      ],
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.access_time),
                          SizedBox(
                            width: 5,
                          ),
                          Text("Open"),
                          SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.grey)),
                    ),     Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.local_car_wash),
                          SizedBox(
                            width: 5,
                          ),
                          Text("Car"),
                          SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.grey)),
                    ),     Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.image),
                          SizedBox(
                            width: 5,
                          ),
                          Text("Scenic"),
                          SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.grey)),
                    ),
                  ],
                )
              ],
            ),
          ),
          preferredSize: Size(MediaQuery.of(context).size.width, 160)),
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
        selectedItemColor: Color(0xff2DC92D),
      ),
    );
  }
}

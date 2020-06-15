import 'package:dinnerApp/single_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//import './pages/FirstScreen.dart';
//import './pages/SecondScreen.dart';

class PastBookings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            bottom: TabBar(
              indicatorColor: Color.fromRGBO(67, 158, 67, 1),
              tabs: [
                Tab(
                    child: Text(
                      "Upcoming",
                      style: TextStyle(color: Colors.black),
                    )),
                Tab(
                    child: Text(
                      "Past",
                      style: TextStyle(color: Colors.black),
                    ))
              ],
            ),
            title: Text(
              'Bookings',
              style: TextStyle(color: Colors.black),
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(right: 10),
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Color.fromRGBO(67, 158, 67, 1),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "Aug",
                                          style: TextStyle(fontSize: 10)),
                                      TextSpan(
                                          text: "\n16",
                                          style: TextStyle(fontSize: 20)),
                                      TextSpan(
                                          text: "\nMonday",
                                          style: TextStyle(fontSize: 10)),
                                    ]),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "The Rails",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.fastfood,
                                          color: Colors.grey,
                                          size: 15,
                                        ),
                                        Text(
                                          "British",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                        Icon(
                                          Icons.location_on,
                                          color: Colors.grey,
                                          size: 15,
                                        ),
                                        Text(
                                          "Christchurch",
                                          style: TextStyle(color: Colors.grey),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.access_time,
                                          size: 15,
                                        ),
                                        Text(
                                          "14:00",
                                        ),
                                        Icon(
                                          Icons.people,
                                          color: Colors.grey,
                                          size: 15,
                                        ),
                                        Text(
                                          "2",
                                        ),
                                        Icon(
                                          Icons.local_offer,
                                          size: 15,
                                        ),
                                        Text(
                                          "25%",
                                          style: TextStyle(color: Colors.black),
                                        )
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>SingleItemPage()));}
                      );
                    }),
              ),
              Container(
                padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                child: ListView.builder(
                    itemCount: 2,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.circular(10)),
                                child: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(children: <TextSpan>[
                                    TextSpan(
                                        text: "Aug",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 10)),
                                    TextSpan(
                                        text: "\n16",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 20)),
                                    TextSpan(
                                        text: "\nMonday",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 10)),
                                  ]),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "The Rails",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.check_circle_outline,
                                        color: Colors.grey,
                                        size: 15,
                                      ),
                                      Text(
                                        "Booked",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      Icon(
                                        Icons.check_circle_outline,
                                        color: Colors.grey,
                                        size: 15,
                                      ),
                                      Text(
                                        "Paid",
                                        style: TextStyle(color: Colors.grey),
                                      )
                                    ],
                                  ),
                                  RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(children: <TextSpan>[
                                      TextSpan(
                                          text: "You saved",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12)),
                                      TextSpan(
                                          text: " £8",
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  67, 158, 67, 1),
                                              fontSize: 12)),
                                    ]),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

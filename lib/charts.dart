import 'package:dinnerApp/feedback.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChartsPage extends StatefulWidget {
  @override
  _ChartsPageState createState() => _ChartsPageState();
}

class _ChartsPageState extends State<ChartsPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 4, vsync: this);
    super.initState();
  }

  bool map = false;

  Widget listWidget() {
    return Container(
        color: Colors.grey[100],
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Container(
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
                                      borderRadius: BorderRadius.circular(5)),
                                  padding: EdgeInsets.all(5),
                                  child: Text(
                                    "NEW",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  decoration: BoxDecoration(
                                      color: Color.fromRGBO(255, 145, 35, 1),
                                      borderRadius: BorderRadius.circular(5)),
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("SAVE\nUPTO",
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white)),
                                    Text("50%",
                                        style: TextStyle(
                                            fontSize: 22, color: Colors.white))
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
                                    fontWeight: FontWeight.bold, fontSize: 20),
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
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.info_outline,
                  color: Color.fromRGBO(54, 191, 54, 1.0),
                ),
                onPressed: () {}),
          ],
          backgroundColor: Colors.white,
          title: Image.asset("charts.png"),
          centerTitle: true,
          bottom: TabBar(
            unselectedLabelColor: Colors.black,
            labelColor: Color(0xff2DC92D),
            tabs: [
              new Tab(icon: Container(),text: "New",),
              new Tab(
                icon: Container(),text: "Popular",
              ),
              new Tab(
                icon: Container(),text: "Trending",
              ),
              new Tab(
                icon: Container(),text: "Most Booked",
              ),
            ],
            controller: _tabController,
            indicatorColor: Color(0xff2DC92D),
            indicatorSize: TabBarIndicatorSize.tab,
          ),
          bottomOpacity: 1,
        ),
        body: TabBarView(
          children: [
            listWidget(),
            listWidget(),
            listWidget(),
            listWidget(),
          ],
          controller: _tabController,
        ));
  }
}

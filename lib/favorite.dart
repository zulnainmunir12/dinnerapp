
import 'package:dinnerApp/feedback.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FavoritePage extends StatefulWidget {
  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
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
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.only(left: 15, right: 15),
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                child: RichText(
                  text: TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: "Helpful Tip ",
                        style: TextStyle(
                            color: Color.fromRGBO(67, 158, 67, 1),
                            fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: "- Remove From Favourites",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    TextSpan(
                        text:
                        "\nTo remove an eatery from your favourites list, swipe the eatery item left or right off the screen.",
                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300))
                  ]),
                )),
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
                            "background.png",
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
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Column(
                  children: <Widget>[
                    Text(
                      "Found somewhere new?",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "We are discovering and adding new eateries every day, if you know of somewhere, let us know! 😊",
                      textAlign: TextAlign.center,
                    ),
                    Text("Add New Place",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          color: Color.fromRGBO(67, 158, 67, 1),
                        )),
                  ],
                ))
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color.fromRGBO(54, 191, 54, 1.0),
          ),
          onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>FeedbackPage()));}
        ),
        backgroundColor: Colors.white,
        title: Text("Favourites"),
      ),
      body: listWidget(),
    );
  }
}

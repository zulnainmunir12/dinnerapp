
import 'package:dinnerApp/add_new_place.dart';
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
                                      color: Color.fromRGBO(255, 145, 35, 1),
                                      borderRadius: BorderRadius.circular(5)),
                                  padding: EdgeInsets.all(5),
                                  child: Text(
                                    "NEW",
                                    style:
                                    TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
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
                                    Text("up to",
                                        style: TextStyle(
                                            fontSize: 17, color: Colors.white)),
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
                                        fontWeight: FontWeight.bold, fontSize: 20),
                                  ),
                                  SizedBox(width: 200,),
                                  Icon(Icons.favorite_border,color: Color.fromRGBO(67, 158, 67, 1),)
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.restaurant,color: Colors.grey.withOpacity(0.6),size: 17,),
                                  SizedBox(width: 3,),
                                  Text("British",style: TextStyle(fontSize: 16,color: Colors.black.withOpacity(0.5)),),
                                  VerticalDivider(),
                                  Icon(
                                    Icons.room,
                                    size: 17,
                                    color: Colors.grey.withOpacity(0.6),
                                  ),
                                  Text("NewPort",style: TextStyle(fontSize: 16,color: Colors.black.withOpacity(0.5)),),
                                  
                                 SizedBox(width: 120,),
                                  Text("£££",style: TextStyle(color: Colors.grey.withOpacity(0.8)),),
                                ],
                              ),
                              SizedBox(height: 5,),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.star,color: Color.fromRGBO(67, 158, 67,1),size: 17,),
                                  Text(" 4.0, (123)"),
                                  CircleAvatar(
                                    child: Text("A"),
                                    radius: 12,
                                    backgroundColor: Color.fromRGBO(67, 158, 67, 1),
                                  ),
                                  CircleAvatar(
                                    child: Text("A"),
                                    radius: 12,
                                    backgroundColor: Colors.orange,
                                  ),
                                  CircleAvatar(
                                    child: Text("A"),
                                    radius: 12,
                                      backgroundColor: Colors.green
                                  ),
                                  CircleAvatar(
                                    child: Text("A"),
                                    radius: 12,
                                      backgroundColor: Colors.deepPurple
                                  ),
                                  CircleAvatar(
                                    child: Text("A"),
                                    radius: 12,
                                      backgroundColor: Colors.pink
                                  ),
                                  CircleAvatar(
                                    child: Text("A"),
                                    radius: 12,
                                      backgroundColor: Colors.greenAccent
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
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                    height: 40,
                                    width: 90,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(67, 158, 67, 1).withOpacity(0.9),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Center(child: Text('18:00',style: TextStyle(
                                      color: Colors.white,fontSize: 18
                                    ),)),
                                  ),
                                  SizedBox(width: 10,),
                                  Column(
                                    children: <Widget>[
                                      Container(
                                        height: 40,
                                        width: 90,
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(67, 158, 67, 1).withOpacity(0.9),
                                          borderRadius: BorderRadius.only(topRight: Radius.circular(5),topLeft: Radius.circular(5)),
                                        ),
                                        child: Center(child: Text('18:00',style: TextStyle(
                                            color: Colors.white,fontSize: 18
                                        ),)),
                                      ),
                                      Container(
                                        height: 40,
                                        width: 90,
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(67, 158, 67, 1).withOpacity(0.2),
                                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(5),bottomLeft: Radius.circular(5)),
                                        ),
                                        child: Center(child: Text('50%',style: TextStyle(
                                            color: Colors.white,fontSize: 18
                                        ),)),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 10,),
                                  Column(
                                    children: <Widget>[
                                      Container(
                                        height: 40,
                                        width: 90,
                                        decoration: BoxDecoration(
                                          color: Colors.grey .withOpacity(0.5),
                                          borderRadius: BorderRadius.only(topRight: Radius.circular(5),topLeft: Radius.circular(5)),
                                        ),
                                        child: Center(child: Text('18:00',style: TextStyle(
                                            color: Colors.white,fontSize: 18
                                        ),)),
                                      ),
                                      Container(
                                        height: 40,
                                        width: 90,
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(5),bottomLeft: Radius.circular(5)),
                                        ),
                                        child: Center(child: Text('Sold',style: TextStyle(
                                            color: Colors.white,fontSize: 18
                                        ),)),
                                      ),
                                    ],
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
                    FlatButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>AddNewPlacePage()));
                    },
                      child: Text("Add New Place",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                            color: Color.fromRGBO(67, 158, 67, 1),
                          )),
                    ),
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
            color: Colors.black,
          ),
          onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>FeedbackPage()));}
        ),
        backgroundColor: Colors.white,
        title: Text("Favourites",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22),),
      ),
      body: listWidget(),
    );
  }
}

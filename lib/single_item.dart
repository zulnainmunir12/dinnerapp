
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
//import 'dart:convert';

class SingleItemPage extends StatefulWidget {
  @override
  _SingleItemPageState createState() => _SingleItemPageState();
}

class _SingleItemPageState extends State<SingleItemPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Container(
          padding: EdgeInsets.only(left: 15, top: 10, right: 15),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              Text(
                "The Rails",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.calendar_today),
                  SizedBox(
                    width: 5,
                  ),
                  Text("Thu 25 Jul"),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.access_time),
                  SizedBox(
                    width: 5,
                  ),
                  Text("12:30"),
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
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "50% Discount",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 0.5)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(
                          Icons.phone,
                          color: Color.fromRGBO(54, 191, 54, 1.0),
                        ),
                        Text(
                          "Phone",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Container(
                      color: Colors.grey,
                      height: 50,
                      width: 0.5,
                    ),
                    Column(
                      children: <Widget>[
                        Icon(
                          Icons.navigation,
                          color: Color.fromRGBO(54, 191, 54, 1.0),
                        ),
                        Text(
                          "Navigate",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Container(
                      color: Colors.grey,
                      height: 50,
                      width: 0.5,
                    ),
                    Column(
                      children: <Widget>[
                        Icon(
                          Icons.credit_card,
                          color: Color.fromRGBO(54, 191, 54, 1.0),
                        ),
                        Text(
                          "Pay",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Stack(
                children: <Widget>[
                  ClipRRect(
                    child: Image.asset(
                      "background.png",
                      height: 80,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.fitWidth,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  Positioned(
                    top: 20,
                    left: 30,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "The Rails",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
//                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(children: <Widget>[
                              Icon(
                                Icons.star,
                                color: Color.fromRGBO(54, 191, 54, 1.0),
                              ),
                              Text(
                                " 4.0, (123) British",
                                style: TextStyle(color: Colors.white),
                              ),
                            ]),
//                              Expanded(child: Container(),),
                          ],
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      top: 30,
                      right: 30,
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                      ))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  Text(
                    "Name  ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    "John Doe",
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    "Email address  ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    "JohnDoe@Email.com",
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    "Contact Number  ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    "00000 000000",
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Cancel Booking"),
                  Icon(Icons.arrow_forward)
                ],
              ),
              Divider(),
            ],
          )),
      bottomNavigationBar: Container(
        child: RaisedButton(

          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          onPressed: () {},
          child: Text(
            "Pay the Bill",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20),
      ),
    );
  }
}

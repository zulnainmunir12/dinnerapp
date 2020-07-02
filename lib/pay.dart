import 'package:dinnerApp/add_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart' as prefix0;
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PayPage extends StatefulWidget {
  @override
  _PayPageState createState() => _PayPageState();
}

class _PayPageState extends State<PayPage> {
  bool payment = false;

  Widget listWidget() {
    return Container(
        color: Colors.grey[100],
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Container(
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                RichText(
                                  text: TextSpan(children: <TextSpan>[
                                    TextSpan(
                                        text: "£35.60",
                                        style: TextStyle(
                                            fontSize: 32,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black)),
                                    TextSpan(
                                        text: "\nTotal Charge & Tips",
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.grey)),
                                  ]),
                                ),
                                Container(
                                  width: 2,
                                  height: 40,
                                  color: Colors.grey,
                                ),
                                RichText(
                                  text: TextSpan(children: <TextSpan>[
                                    TextSpan(
                                        text: "50%",
                                        style: TextStyle(
                                          fontSize: 32,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromRGBO(67, 158, 67, 1),
                                        )),
                                    TextSpan(
                                        text: "\nIncentive applied",
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.grey)),
                                  ]),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[100],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: EdgeInsets.all(10),
                              alignment: Alignment.center,
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(children: <TextSpan>[
                                  TextSpan(
                                      text: "You saved",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                      text: " £8",
                                      style: TextStyle(
                                          color: Color.fromRGBO(67, 158, 67, 1),
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold)),
                                ]),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            !payment
                                ? Container()
                                : Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Payments",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  child: ListView.builder(
                                      itemCount: 6,
                                      itemBuilder: (BuildContext context,
                                          int index) {
                                        return Row(
                                          children: <Widget>[
                                            Text("JOHN D"),
                                            Expanded(
                                              child: Container(),
                                            ),
                                            Text("18:21"),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Text("x4"),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Text(
                                              "£8.40",
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    67, 158, 67, 1),
                                              ),
                                            ),
                                          ],
                                        );
                                      }),
                                  height: 140,
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  payment
                                      ? "Hide Payments (6)"
                                      : "View Payments (6)",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                IconButton(
                                  icon: Icon(
                                    payment
                                        ? Icons.keyboard_arrow_up
                                        : Icons.keyboard_arrow_down,
                                    color: Color.fromRGBO(67, 158, 67, 1),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      payment = !payment;
                                    });
                                  },
                                )
                              ],
                            ),
                            Divider(),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.check_circle_outline,
                                  color: Color.fromRGBO(67, 158, 67, 1),
                                ),
                                Text(
                                  " Paid £11.40",
                                  style: TextStyle(
                                    color: Color.fromRGBO(67, 158, 67, 1),
                                  ),
                                ),
                                Expanded(
                                  child: Container(),
                                ),
                                Text("Thu 25 Jul 2019, 6:10pm"),
                              ],
                            ),
                          ])),
                )),
            Expanded(
              child: Container(),
            ),
            Row(
              children: <Widget>[

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  height: 30,
                  width: MediaQuery.of(context).size.width,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                            side: BorderSide()),
                        child: Text("Amount"),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>AddCardPage()));
                        },
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                            side: BorderSide()),
                        child: Text("Pay Balance"),
                        onPressed: () {},
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                            side: BorderSide()),
                        child: Text("Split x2"),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext builder) {
                      return Scaffold(
                          body: Container(
                              width: MediaQuery.of(context).size.width,
                              padding:
                              EdgeInsets.only(top: 10, left: 10, right: 10),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Select payment method",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                    textAlign: TextAlign.justify,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    margin:
                                    EdgeInsets.symmetric(horizontal: 15),
                                    padding: EdgeInsets.all(15),
                                    color: Colors.grey[100],
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Image.asset("assets/google.png"),
                                            Text(
                                              "Setup Required",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Icon(
                                              Icons.credit_card,
                                              color: Color.fromRGBO(
                                                  67, 158, 67, 1),
                                            ),
                                            Text(
                                              "MasterCard (ending in 5926)",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(),
                                            ),
                                            Icon(Icons.check)
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 20,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      RaisedButton(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(10)),
                                        onPressed: () {
                                          prefix0.Navigator.pop(context);
                                          Navigator.pushNamed(context, "/card");
                                          },
                                        child: Text(
                                          "Add new",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                              color: Colors.white),
                                        ),
                                      ),
                                      RaisedButton(
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(10)),
                                        onPressed: () {},
                                        child: Text(
                                          "Done",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )));
                    });
              },
              child: Text(
                "Pay £33.60",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              ),
              color: Color.fromRGBO(67, 158, 67, 1),
            ),
            RichText(
              text: TextSpan(children: <TextSpan>[
                TextSpan(
                    text: "Paying with ",
                    style: TextStyle(color: Colors.black)),
                TextSpan(
                    text: "card (5926)",
                    style: TextStyle(
                        color: Color.fromRGBO(67, 158, 67, 1),
                        decoration: TextDecoration.underline)),
              ]),
            ),
            SizedBox(
              height: 20,
            ),
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
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Colors.white,
        title: Text("The Rails",style: TextStyle(color: Colors.black),),
        actions: <Widget>[
          FlatButton(
            child: Text("Pay Code: 1111"),
            onPressed: () {},
          ),
        ],
      ),
      body: listWidget(),
    );
  }
}

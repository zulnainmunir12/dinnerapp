
import 'package:dinnerApp/past_booking.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NoBookingPage extends StatefulWidget {
  @override
  _NoBookingPageState createState() => _NoBookingPageState();
}

class _NoBookingPageState extends State<NoBookingPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Color.fromRGBO(54, 191, 54, 1.0),),onPressed: ()=>Navigator.pop(context),),
        backgroundColor: Colors.white,title: Text("Bookings"),),
      body: Container(
          padding: EdgeInsets.only(left: 15, top: 10, right: 15),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.calendar_today,
                size: 50,
                color: Colors.grey,
              ),
              Text(
                "Book a table",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Text(
                "When you book a table it will show up here.",
                style: TextStyle(fontSize: 14),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>PastBookings()));},
                child: Text(
                  "Browse eateries",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                ),
              )
            ],
          )),

    );
  }
}

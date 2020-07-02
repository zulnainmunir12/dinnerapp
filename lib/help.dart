
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HelpPage extends StatefulWidget {
  @override
  _HelpPageState createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  bool payment = false;

  Widget listWidget() {
    return Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 15),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Text(
                "Support and Information",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Color.fromRGBO(54, 191, 54, 1.0),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    Icons.language,
                    color: Color.fromRGBO(67, 158, 67, 1),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Website",
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
              Divider(),
              SizedBox(height: 8,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    Icons.alternate_email,
                    color: Color.fromRGBO(67, 158, 67, 1),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Contact Us",
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
              Divider(),
              SizedBox(height: 8,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    Icons.error,
                    color: Color.fromRGBO(67, 158, 67, 1),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "How to DineWight",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Divider(),
              SizedBox(
                height: 20,
              ),
              Text(
                "Privacy and Terms",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Color.fromRGBO(54, 191, 54, 1.0),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[

                  Text(
                    "Privacy Policy",
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
              Divider(),
             SizedBox(height: 8,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[

                  Text(
                    "Terms of Use",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Divider(),
              SizedBox(height: 50,),
              Text("Build Version: 0.0.0",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
            ]));
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
        title: Text("Help & Info",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        actions: <Widget>[

        ],
      ),
      body: listWidget(),
    );
  }
}

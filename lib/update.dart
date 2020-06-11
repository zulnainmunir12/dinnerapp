import 'package:dinnerApp/features.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Update extends StatefulWidget {
  @override
  _Update createState() {
    return _Update();
  }
}

class _Update extends State<Update> {
  createAlertDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              content: Container(
                width: 320,
                height: 140,
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Text(
                        "It's time to update",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "We've made some changes, please",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 25,
                        ),
                        FlatButton(
                          onPressed: () {},
                          child: Text(
                            'Remind me later',
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                        ),
                        FlatButton(
                          onPressed: () {},
                          child: Text(
                            'Update now',
                            style: TextStyle(
                                color: Color.fromRGBO(54, 191, 54, 2),
                                fontSize: 15),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ));
        });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 200,
          ),
          Center(
              child: Icon(
            Icons.history,
            size: 120,
            color: Color.fromRGBO(204, 204, 204, 2),
          )),
          Center(
            child: Text(
              "It's time to update",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Text(
              "We've made some changes, please",
              style: TextStyle(fontSize: 16),
            ),
          ),
          Center(
            child: Text(
              "download latest update.",
              style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 150),
          ),
          Center(
            child: SizedBox(
              width: 360,
              height: 50,
              child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      side: BorderSide(color: Color.fromRGBO(54, 191, 54, 2))),
                  color: Color.fromRGBO(54, 191, 54, 2),
                  child: Text(
                    'Update',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    createAlertDialog(context);
                  }),
            ),
          ),
          SizedBox(height: 15,),
          Center(
            child: SizedBox(
              width: 360,
              height: 50,
              child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      side: BorderSide(color: Colors.grey.withOpacity(0.5))),
                  color: Colors.white,
                  child: Text(
                    'Later',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Features();
                    }));
                  }),
            ),
          ),

        ],
      ),
    );
  }
}

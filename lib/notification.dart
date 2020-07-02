import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//import './pages/FirstScreen.dart';
//import './pages/SecondScreen.dart';

class NotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: Text(
          'Notifications',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 15, right: 15, top: 10),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "New",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(54, 191, 54, 1.0),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            "[Title]",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 240,
                          ),
                          Icon(
                            Icons.clear,
                            color: Colors.grey.withOpacity(0.8),
                          )
                        ],
                      ),
                      Text(
                        "Today at 12:30",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore..."),
                           SizedBox(height: 20,),
                     Center(
                       child:  Container(
                         height: 50,
                         width: 280,
                         decoration: BoxDecoration(color: Color.fromRGBO(54, 191, 54, 1),
                             borderRadius: BorderRadius.circular(10)),
                         child: FlatButton(
                           onPressed: (){},
                           child: Text('[Action]',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                         ),
                       ),
                     )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Passed Week",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(54, 191, 54, 1.0),
                ),
              ),
              SizedBox(height: 15,),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                  child: Column(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                "[Title]",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 240,),
                              Icon(Icons.clear,color: Colors.grey.withOpacity(0.7),)
                            ],
                          ),
                          Text(
                            "Mon 4th Sep at 8:00",
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(height: 10,),
                          Text(
                              "Lorem ipsum dolor sit amet consectetur \n adipiscing elit,sed do eiusmod tempor incididunt.."),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Center(
                        child:  Container(
                          height: 50,
                          width: 280,
                          decoration: BoxDecoration(color: Color.fromRGBO(54, 191, 54, 1),
                              borderRadius: BorderRadius.circular(10)),
                          child: FlatButton(
                            onPressed: (){},
                            child: Text('Action 1',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ]),
      ),
    );
  }
}

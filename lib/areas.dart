import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AreasPage extends StatefulWidget {
  @override
  _AreasPageState createState() => _AreasPageState();
}

class _AreasPageState extends State<AreasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Explore the Isle of Wight",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
            itemCount: 3,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
//                    padding: EdgeInsets.all(10),
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Image.asset(
                            "areas.png",
                            width: MediaQuery.of(context).size.width * 0.8,
                            height: 150,
                            fit: BoxFit.fill,
                          ),
                          Container(
//                    padding: EdgeInsets.all(10),
                            width: MediaQuery.of(context).size.width * 0.8,
                            height: 150,
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.42),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            height: 150,
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[Text(
                                "[Area]",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),Text(
                                "23 eateries",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,),
                              ),],),
                          )
                        ],
                      )
                    ]),
                margin: EdgeInsets.symmetric(vertical: 10),
              );
            }),
      ),
    );
  }
}

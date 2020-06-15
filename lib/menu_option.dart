import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MenuOptionPage extends StatefulWidget {
  @override
  _MenuOptionPageState createState() => _MenuOptionPageState();
}

class _MenuOptionPageState extends State<MenuOptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Menu options",
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

                          Container(
//                    padding: EdgeInsets.all(10),
                            width: MediaQuery.of(context).size.width * 0.8,
                            height: 125,
                            decoration: BoxDecoration(
                                color: Color(0xffF6C70E),
                                borderRadius: BorderRadius.circular(10)),
                          ),
              Container(
              width: MediaQuery.of(context).size.width * 0.8,child:Row(children: <Widget>[   Image.asset(
                            "gluten.png",
//                            width: MediaQuery.of(context).size.width * 0.8,
//                            height: 150,
//                            fit: BoxFit.fill,
                          )],mainAxisAlignment: MainAxisAlignment.end,)),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            height: 125,
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[Text(
                                "Gluten Free",
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

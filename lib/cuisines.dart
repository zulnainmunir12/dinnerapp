import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CuisinePage extends StatefulWidget {
  @override
  _CuisinePageState createState() => _CuisinePageState();
}

class _CuisinePageState extends State<CuisinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Cuisines",
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
                            "cuisine.png",
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
                              "[Cuisine]",
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

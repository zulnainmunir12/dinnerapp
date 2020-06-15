import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(icon:Icon(Icons.arrow_back),onPressed: ()=>Navigator.pop(context),),
        title: TextField(
          decoration: InputDecoration(

              hintText: "Search Locations", border: InputBorder.none),
        ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(icon:Icon(Icons.clear),onPressed: ()=>Navigator.pop(context),),
        ],
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.only(left: 20,top: 20 ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(Icons.location_searching,color: Color.fromRGBO(54, 191, 45, 1.0),),
                  SizedBox(
                    width: 10,
                  ),
                  Text("My location"),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Recent",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(54, 191, 45, 1.0),
                    fontSize: 16),
              ),
              SizedBox(
                height: 10,
              ),
              Flexible(child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (BuildContext context, int index){
                    return Column(children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(Icons.location_on),
                          SizedBox(
                            width: 10,
                          ),
                          Text("location"),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],);
                  }),),


              Text(
                "All location",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(54, 191, 45, 1.0),
                    fontSize: 16),
              ),
              SizedBox(
                height: 20,
              ),
              Flexible(child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (BuildContext context, int index){
                    return Column(children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(Icons.location_on),
                          SizedBox(
                            width: 10,
                          ),
                          Text("location"),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],);
                  }),),

            ],
          )),
    );
  }
}
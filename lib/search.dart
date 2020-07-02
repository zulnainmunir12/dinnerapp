import 'package:dinnerApp/near_me.dart';
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
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black,),onPressed: ()=>Navigator.pop(context),),
        title: TextField(
          decoration: InputDecoration(
              hintText: "Location", border: InputBorder.none,
          hintStyle: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black)),
        ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(icon:Icon(Icons.search,color: Color.fromRGBO(67, 158, 67, 2),),onPressed: ()=>Navigator.pop(context),),
        ],
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
//          padding: EdgeInsets.only(left: 20,top: 20 ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 10,),
              Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.near_me,color: Color.fromRGBO(54, 191, 45, 1.0),),
                  onPressed: (){Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>NearMePage()
                  ));},),
                  SizedBox(
                    width: 5,
                  ),
                  Text("Near me",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                ],
              ),
              Row(
                children: <Widget>[
                  IconButton(icon: Icon(Icons.room,color: Color.fromRGBO(54, 191, 45, 1.0),),),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Select on map",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: <Widget>[
                  SizedBox(width: 20,),
                  Text(
                    "Recent",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(54, 191, 45, 1.0),
                        fontSize: 18),
                  ),
                ],
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
                          SizedBox(width: 20,),
                          Icon(Icons.location_on,color: Colors.grey.withOpacity(0.6),),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Location',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500),),
                        ],
                      ),
                    ],);
                  }),),

            ],
          )),
    );
  }
}

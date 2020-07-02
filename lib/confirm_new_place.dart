import 'package:dinnerApp/add_new_eatery.dart';
import 'package:dinnerApp/done_new_place.dart';
import 'package:dinnerApp/eatry_location.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ConfirmNewPlacePage extends StatefulWidget {
  @override
  _ConfirmNewPlacePageState createState() => _ConfirmNewPlacePageState();
}

class _ConfirmNewPlacePageState extends State<ConfirmNewPlacePage> {
  bool map = false;

  Widget listWidget() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 10,),
            Row(
              children: <Widget>[
                SizedBox(width: 5,),
                Container(
                  height: 60,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(54, 191, 54, 2),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(40),bottomLeft: Radius.circular(40))
                  ),
                  child: FlatButton(
                    onPressed: (){},
                    child: Text('Find',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                  ),
                ),
                SizedBox(width: 3,),
                Container(
                  height: 60,
                  width: 140,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3)
                  ),
                  child: FlatButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>EateryLocatioPage()));
                  },
                  child: Text('Location',style: TextStyle(color: Colors.grey.withOpacity(0.5),fontSize: 18,fontWeight: FontWeight.bold),),),
                ),
                SizedBox(width: 3,),
                Container(
                  height: 60,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.3),
                      borderRadius: BorderRadius.only(topRight: Radius.circular(40),bottomRight: Radius.circular(40))
                  ),
                  child: FlatButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>AddNewEateryPage()));
                    },
                    child: Text('Submit',style: TextStyle(color: Colors.grey.withOpacity(0.5),fontSize: 18,fontWeight: FontWeight.bold),),
                  ),
                ),

              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Eatery Name:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Lilly's Terrace Cafe",
                  hintStyle: TextStyle(fontSize: 18,color: Colors.black),
                  filled: true,
                  fillColor: Colors.grey[300],
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none)),
            ),
//            SizedBox(
//              height: 10,
//            ),  Text(
//              "Address:",
//              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//            ),
//            SizedBox(
//              height: 15,
//            ),
//            TextField(
//              decoration: InputDecoration(
//                  filled: true,
//                  suffixIcon: Icon(Icons.location_searching),
//                  fillColor: Colors.grey[300],
//                  border: InputBorder.none),
//            ),

            Flexible(child: Container(),),
            ButtonTheme(
              child: RaisedButton(
                color: Color.fromRGBO(54, 191, 54, 2),
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: () =>Navigator.push(context, MaterialPageRoute(
                  builder: (context)=>DoneNewPlacePage()
                )),
                child: Text(
                  "Next",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              minWidth: MediaQuery.of(context).size.width,
              height: 50,
            ),
            SizedBox(height: 20,)
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
            color: Colors.black
          ),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Colors.white,
        title: Text("Check the eatry name",style: TextStyle(color: Colors.black),),
      ),
      body: listWidget(),
    );
  }
}

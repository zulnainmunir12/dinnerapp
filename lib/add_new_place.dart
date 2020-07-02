import 'package:dinnerApp/confirm_new_place.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddNewPlacePage extends StatefulWidget {
  @override
  _AddNewPlacePageState createState() => _AddNewPlacePageState();
}

class _AddNewPlacePageState extends State<AddNewPlacePage> {
  bool map = false;

  Widget listWidget() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                SizedBox(width: 35,),
                Container(
                  height: 60,
                  width: 150,
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
                  width: 150,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(54, 191, 54, 2),
                      borderRadius: BorderRadius.only(topRight: Radius.circular(40),bottomRight: Radius.circular(40))
                  ),
                  child: FlatButton(
                    onPressed: (){},
                    child: Text('Submit',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                  ),
                ),

              ],
            ),


            SizedBox(
              height: 15,
            ),
            TextField(

              decoration: InputDecoration(
                hintText: "Lilly's Terrace Cafe",
                  hintStyle: TextStyle(color: Colors.black,fontSize: 18),
                  filled: true,
                  fillColor: Colors.grey[300],
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(5),borderSide: BorderSide.none)
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: <Widget>[
                Icon(Icons.location_on,color: Color.fromRGBO(67, 158, 67, 1),size: 40,),
                SizedBox(
                  width: 10,
                ),
                RichText(
                  text: TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: "Lilly's Terrace Cafe",
                        style: TextStyle(fontSize: 18, color: Color.fromRGBO(67, 158, 67, 1))),
                    TextSpan(
                        text: "\nIsle of Wight, Uk",
                        style: TextStyle(fontSize: 15, color: Colors.grey))
                  ]),
                ),
                SizedBox(width: 130,),
                Icon(Icons.check,color: Color.fromRGBO(67, 158, 67, 1),)
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: <Widget>[
                Icon(Icons.location_on,size: 40,),
                SizedBox(
                  width: 10,
                ),
                RichText(
                  text: TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: "Lilly's Workshop",
                        style: TextStyle(fontSize: 18, color: Colors.black)),
                    TextSpan(
                        text: "\nIsle of wight, Uk",
                        style: TextStyle(fontSize: 15, color: Colors.grey))
                  ]),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: <Widget>[
                Icon(Icons.location_on,size: 40,),
                SizedBox(
                  width: 10,
                ),
                RichText(
                  text: TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: "Lilly's Workshop",
                        style: TextStyle(fontSize: 18, color: Colors.black)),
                    TextSpan(
                        text: "\nRoad, Town, Country",
                        style: TextStyle(fontSize: 15, color: Colors.grey))
                  ]),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: <Widget>[
                SizedBox(width: 10,),
                Icon(Icons.room),
                SizedBox(width: 20,),
                RichText(
                  text: TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: "Not here? ",
                        style: TextStyle(fontSize: 16, color: Colors.black)),
                    TextSpan(
                        text: "Add New",
                        style: TextStyle(
                            fontSize: 17,
                            color: Color.fromRGBO(54, 191, 54, 2),
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline))
                  ]),
                ),
              ],
            ),
            Flexible(child: Container(),),
            ButtonTheme(
              child: RaisedButton(
                color: Color.fromRGBO(54, 191, 54, 2),
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: () =>Navigator.push(context, MaterialPageRoute(builder: (context)=>ConfirmNewPlacePage())),
                child: Text(
                  "Submit",
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
        title: Text("Add new Eatry",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
      ),
      body: listWidget(),
    );
  }
}

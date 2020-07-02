import 'package:dinnerApp/confirm_new_place.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ReviewEateryDetailPage extends StatefulWidget {
  @override
  _ReviewEateryDetailPageState createState() => _ReviewEateryDetailPageState();
}

class _ReviewEateryDetailPageState extends State<ReviewEateryDetailPage> {
  bool _isChecked = false;
  bool map = false;
  void onChanged(bool value) {
    setState(() {
      _isChecked = value;
    });
  }

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
                SizedBox(width: 20,),
                Container(
                  height: 60,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(54, 191, 54, 2),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(40),bottomLeft: Radius.circular(40))
                  ),
                  child: FlatButton(
                    onPressed: (){},
                    child: Text('Name',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                  ),
                ),
                SizedBox(width: 3,),
                Container(
                  height: 60,
                  width: 130,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(54, 191, 54, 2),
                  ),
                  child: FlatButton(
                    onPressed: (){},
                    child: Text('Find',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                  ),
                ),
                SizedBox(width: 3,),
                Container(
                  height: 60,
                  width: 100,
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
            Text('Eatery name',style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
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
              height: 15,
            ),
            Text('Eatery Location',style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                  hintText: "Road, Town, Country, PostCode",
                  hintStyle: TextStyle(color: Colors.black,fontSize: 18),
                  filled: true,
                  fillColor: Colors.grey[300],
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(5),borderSide: BorderSide.none)
              ),
            ),
            SizedBox(
              height: 20,
            ),
          Center(
            child:  Image.asset('map2.png',fit: BoxFit.cover,),
          ),
            Row(
              children: <Widget>[
                SizedBox(height:20,),
               Checkbox(
                 value: _isChecked,
                 onChanged: (bool value){
                   onChanged(false);
                 },
               ),
                SizedBox(
                  width: 10,
                ),
                RichText(
                  text: TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: "Confirm eatery details",
                        style: TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.bold)),
                  ]),
                )
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
        title: Text("Review Eatery details",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
      ),
      body: listWidget(),
    );
  }
}

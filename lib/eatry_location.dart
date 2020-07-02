import 'package:dinnerApp/confirm_new_place.dart';
import 'package:dinnerApp/review_eatery_detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EateryLocatioPage extends StatefulWidget {
  @override
  _EateryLocationPageState createState() => _EateryLocationPageState();
}

class  _EateryLocationPageState extends State<EateryLocatioPage> {
  bool map = false;

  Widget listWidget() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
             Image.asset('map.png',fit: BoxFit.cover,),
            Flexible(child: Container(),),
            ButtonTheme(
              child: RaisedButton(
                color: Color.fromRGBO(54, 191, 54, 2),
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: () =>Navigator.push(context, MaterialPageRoute(builder: (context)=>ReviewEateryDetailPage())),
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
        title: Text("Move to Eatery Location",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
      ),
      body: listWidget(),
    );
  }
}

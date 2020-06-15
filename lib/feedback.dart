
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FeedbackPage extends StatefulWidget {
  @override
  _FeedbackPageState createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
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
            Text(
              "Eatery Name:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              decoration: InputDecoration(
                  filled: true,
                  suffixIcon: Icon(Icons.lock),
                  fillColor: Colors.grey[300],
                  border: InputBorder.none),
            ),
            SizedBox(
              height: 10,
            ),  Text(
              "Feedback:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              maxLines: 6,
              decoration: InputDecoration(
//                  filled: true,
//                  fillColor: Colors.grey[300],

                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
            ),

            Flexible(child: Container(),),
            ButtonTheme(
              child: RaisedButton(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
//                onPressed: () =>Navigator.push(context, MaterialPageRoute(builder:(context)=> )),
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
            color: Color.fromRGBO(54, 191, 54, 1.0),
          ),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Colors.white,
        title: Text("Suggest changes"),
      ),
      body: listWidget(),
    );
  }
}

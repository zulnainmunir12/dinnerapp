
import 'package:dinnerApp/menu_option.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

class DoneNewPlacePage extends StatefulWidget {
  @override
  _DoneNewPlacePageState createState() => _DoneNewPlacePageState();
}

class _DoneNewPlacePageState extends State<DoneNewPlacePage> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  Map userInfo;

  String _error;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

//  void onCreditCardModelChange(CreditCardModel creditCardModel) {
//    setState(() {
//      cardNumber = creditCardModel.cardNumber;
//      expiryDate = creditCardModel.expiryDate;
//      cardHolderName = creditCardModel.cardHolderName;
//      cvvCode = creditCardModel.cvvCode;
//      isCvvFocused = creditCardModel.isCvvFocused;
//    });
//  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 250,),
            Text(
              "Thank you! 🤝",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Text(
              "We will verify the eatery shortly\nbefore it is added to the app.",
              style: TextStyle(
                  fontSize: 18,
                ),textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 260,
            ),


            RaisedButton(
              color: Color.fromRGBO(54, 191, 54, 2),
              padding: EdgeInsets.symmetric(horizontal: 135,vertical: 20),

              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MenuOption()));
                },
              child: Text(
                "Done",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

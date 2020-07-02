import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_credit_card/credit_card_form.dart';
import 'package:flutter_credit_card/credit_card_model.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';
class AddCardPage extends StatefulWidget {
  @override
  _AddCardPageState createState() => _AddCardPageState();
}
class _AddCardPageState extends State<AddCardPage> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  Map userInfo;

  String _error;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  void onCreditCardModelChange(CreditCardModel creditCardModel) {
    setState(() {
      cardNumber = creditCardModel.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
      isCvvFocused = creditCardModel.isCvvFocused;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Colors.white,
        title: Text("Add Card",style: TextStyle(color: Colors.black),),
        actions: <Widget>[

        ],
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            CreditCardWidget(
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              showBackView: isCvvFocused,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: CreditCardForm(
                  onCreditCardModelChange:onCreditCardModelChange,
                ),
              ),
            ),
            ButtonTheme(child: RaisedButton(

              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              color: Color.fromRGBO(67, 191, 67, 1),
              onPressed: () {},
              child: Text(
                "Save and continue",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
              ),
            ),minWidth: MediaQuery.of(context).size.width*0.9,height: 50,),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}


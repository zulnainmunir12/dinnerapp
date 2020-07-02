import 'package:dinnerApp/login.dart';
import 'package:dinnerApp/new_password.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _isCheacked = false;
  void _onChanged(bool value) {
    setState(() {
      _isCheacked = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(Icons.arrow_back,color: Colors.black,),
          title:  Padding(
            padding: EdgeInsets.only(bottom: 0.0),
            child: Text(
              'Create your account',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff202120),
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: ListView(
              children: <Widget>[
//                Container(
//                  height: 180,
//                  decoration: BoxDecoration(
//                    image: DecorationImage(
//                        image: AssetImage('assets/images/login_back.png'),
//                        fit: BoxFit.fitWidth,
//                        alignment: Alignment.bottomCenter),
//                    color: Colors.white,
//                  ),
//                  child: Image.asset('assets/images/logo.png'),
//                ),
                Container(
                  padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 30,),
//                      Padding(
//                        padding: EdgeInsets.only(bottom: 15.0),
//                        child: Text(
//                          'Create your account',
//                          textAlign: TextAlign.center,
//                          style: TextStyle(
//                            color: Color(0xff202120),
//                            fontSize: 22.0,
//                            fontWeight: FontWeight.bold,
//                          ),
//                        ),
//                      ),
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Flexible(
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.5,
                                color: Color(0xffEEEEEE),
                                child: TextFormField(
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      labelText: 'First Name',
                                      contentPadding: const EdgeInsets.only(
                                          left: 12, top: 12, bottom: 12, right: 12),
                                      labelStyle: TextStyle(fontSize: 16)),
                                ),
                              )),
                          SizedBox(
                            width: 20,
                          ),
                          Flexible(
                            child: Container(
                              color: Color(0xffEEEEEE),
                              child: TextFormField(
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText: 'Last Name',
                                    contentPadding: const EdgeInsets.only(
                                        left: 12,
                                        top: 12,
                                        bottom: 12,
                                        right: 12),
                                    labelStyle: TextStyle(fontSize: 16)),
                              ),
                            ),
                          ),
                        ],
                      ),
//
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                        child: Container(
                          color: Color(0xffEEEEEE),
                          child: TextFormField(
                            style: TextStyle(
                              color: Colors.black,
                            ),
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                labelText: 'Email Address',
                                contentPadding: const EdgeInsets.only(
                                    left: 12, top: 12, bottom: 12, right: 12),
                                labelStyle: TextStyle(fontSize: 16)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Container(
                          color: Color(0xffEEEEEE),
                          child: TextFormField(
                            obscureText: true,
                            style: TextStyle(
                              color: Colors.black
                            ),
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                labelText: 'Password (8+ Characters)',
                                contentPadding: const EdgeInsets.only(
                                    left: 12, top: 12, bottom: 12, right: 12),
                                labelStyle: TextStyle(fontSize: 16)),
                          ),
                        ),
                      ),
                      SizedBox(height: 25,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Checkbox(
                            value: _isCheacked,
                            onChanged: (bool value) {
                              _onChanged(false);
                            },
                          ),
                          RichText(
                            text: TextSpan(children: <TextSpan>[
                              TextSpan(
                                  text: "Recieve emails for new features and ",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                              TextSpan(
                                  text:
                                  "\nSend me tasty deals, update on new\nfeatures and relevent news about",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.black.withOpacity(0.6)))
                            ]),
                            textAlign: TextAlign.start,
                          ),
//                          Switch(value: false,onChanged:(val){} ,)
                        ],
                      ),
                      SizedBox(height: 125,),
                 Container(
                   height: 140,
                   width: MediaQuery.of(context).size.width,
                   color: Color(0xffEEEEEE),
                   child: Column(
                     children: <Widget>[
                       SizedBox(height: 10,),
                     Text(
                        'By selecting "Confirm" you agree to the terms and\nconditions of [App-Name] Terms of Use and Privacy Policy.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xff202120),
                          fontSize: 16.0,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: MaterialButton(
                          onPressed: () =>Navigator.push(context, MaterialPageRoute(
                            builder: (context)=>NewPassword()
                          )), //since this is only a UI app
                          child: Text(
                            'Next',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          color: Color(0xFF36BF36),
                          elevation: 0,
                          minWidth: 300,
                          height: 50,
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                     ],
                   ),
                 )
                    ],
                  ),
                )
              ],
            )));
  }
}

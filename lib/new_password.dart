import 'package:dinnerApp/login.dart';
import 'package:dinnerApp/nav_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class NewPassword extends StatefulWidget {
  @override
  _Password createState() {
    return _Password();
  }
}

class _Password extends State<NewPassword> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                constraints: BoxConstraints.expand(height: 180),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/login_back.png'), fit: BoxFit.fill)),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 15,
                      child: IconButton(onPressed: (){
//                        Navigator.push(context, MaterialPageRoute(
//                          builder: (context){return ResetPassword();}
//                      ));
                      },
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                    new Positioned(
                      child: Center(
                        child: Image.asset('dw.png'),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Column(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          'Create new Password',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                        SizedBox(height: 5,),
                        Text(
                            'Create a new strong and memorable\npassword to protect your account',
                          style: TextStyle(fontSize: 18,color: Colors.black),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 330,
                      height: 70,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Flexible(
                            child: TextField(
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromRGBO(238, 238, 238, 2),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color.fromRGBO(238, 238, 238, 2))),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color.fromRGBO(238, 238, 238, 2))),
                                hintText: "New Password (8+ character)",
                                hintStyle: TextStyle(
                                    color: Color.fromRGBO(165, 165, 165, 2)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 330,
                      height: 70,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Flexible(
                            child: TextField(
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromRGBO(238, 238, 238, 2),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color.fromRGBO(238, 238, 238, 2))),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color.fromRGBO(238, 238, 238, 2))),
                                hintText: "Confirm new password",
                                hintStyle: TextStyle(
                                    color: Color.fromRGBO(165, 165, 165, 2)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15,),
                    Row(
                      children: <Widget>[
                        SizedBox(width: 40,),
                        Icon(Icons.check,color:Color.fromRGBO(54, 191, 54, 2) ,),
                        SizedBox(width: 15,),
                        Text('Passwords match',style: TextStyle(color:Color.fromRGBO(54, 191, 54, 2),fontSize: 18,fontWeight: FontWeight.w500),)
                      ],
                    ),
                    SizedBox(
                      height: 120,
                    ),
                    SizedBox(
                      width: 330,
                      height: 50,
                      child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                              side: BorderSide(
                                  color: Color.fromRGBO(54, 191, 54, 2))),
                          color: Color.fromRGBO(54, 191, 54, 2),
                          child: Text(
                            'Confirm',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                                  return Login();
                                }));
                          }),
                    ),
                  ],
                ),
              )
            ],
          ),
        ]));
  }
}

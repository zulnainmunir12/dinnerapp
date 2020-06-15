import 'package:dinnerApp/login.dart';
import 'package:dinnerApp/new_password.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  @override
  _Reset createState() {
    return _Reset();
  }
}

class _Reset extends State<ResetPassword> {
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
                        image: AssetImage('logo2.png'), fit: BoxFit.fill)),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 15,
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 30,
                        ),
                        onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context){
                          return Login();
                        }));},
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
                    Text(
                      'Reset your Password',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Forgot your password?No problem, easily done!',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'We can help you reset it using your email.',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 20,),
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
                                    borderSide: BorderSide(color: Color.fromRGBO(238, 238, 238, 2))),
                                hintText: "Email Address",
                                hintStyle:
                                TextStyle(color: Color.fromRGBO(165, 165, 165, 2)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    SizedBox(
                      width: 330,
                      height: 50,
                      child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                              side: BorderSide(color: Color.fromRGBO(54, 191, 54, 2))),
                          color: Color.fromRGBO(54, 191, 54, 2),
                          child: Text(
                            'Send Reset Link',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context){
                            return NewPassword();
                          }));
                          }),
                    ),
                    SizedBox(height: 20,),
                    Text('if there is an account with that address',style: TextStyle(
                        fontSize: 18,color: Color.fromRGBO(54, 191, 54, 2),fontWeight: FontWeight.bold
                    ),),
                    Text('you recieved an email shortly.',style: TextStyle(
                        fontSize: 18,color: Color.fromRGBO(54, 191, 54, 2),fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
              )
            ],
          ),
        ]));
  }
}

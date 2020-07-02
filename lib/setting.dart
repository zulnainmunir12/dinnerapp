import 'package:dinnerApp/add_new_place.dart';
import 'package:dinnerApp/help.dart';
import 'package:dinnerApp/menu_option.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool payment = false;

  Widget listWidget() {
    return ListView(children: <Widget>[
       Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 15),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Text(
                  "DineWidgetPay",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Color.fromRGBO(54, 191, 54, 1.0),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(child:  Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.credit_card,
                      color: Color.fromRGBO(67, 158, 67, 1),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Payment Methods",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),onTap: ()=>Navigator.pushNamed(context, "/methods"),),
                Divider(),
                SizedBox(height: 5,),
                InkWell(onTap: ()=>Navigator.pushNamed(context, "/security"),child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.lock,
                      color: Color.fromRGBO(67, 158, 67, 1),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Payment Security",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),),
                Divider(),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Offline Mode",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Color.fromRGBO(54, 191, 54, 1.0),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                InkWell(onTap: ()=>Navigator.pushNamed(context, "/email"),child:  Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.cloud_circle,
                      color: Color.fromRGBO(67, 158, 67, 1),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Offline Mode",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                )),
                Divider(),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Communications",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Color.fromRGBO(54, 191, 54, 1.0),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                InkWell(onTap: ()=>Navigator.pushNamed(context, "/email"),child:  Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.phone_android,
                      color: Color.fromRGBO(67, 158, 67, 1),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Emails & Notifications",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                )),
                Divider(),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Information & Support",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Color.fromRGBO(54, 191, 54, 1.0),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(onTap: ()=>Navigator.push(context, MaterialPageRoute(
                  builder: (context)=>MenuOption()
                )),child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.book,
                      color: Color.fromRGBO(67, 158, 67, 1),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Menu Options",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                )),
                Divider(),
                SizedBox(height: 5,),
                InkWell(onTap: ()=>Navigator.pushNamed(context, "/help"),child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.star,
                      color: Color.fromRGBO(67, 158, 67, 1),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Rate our app",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                )),
                Divider(),
                SizedBox(height: 5,),
                InkWell(onTap: ()=>Navigator.pushNamed(context, "/help"),child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.location_on,
                      color: Color.fromRGBO(67, 158, 67, 1),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Add new eatry",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                )),
                Divider(),
                SizedBox(height: 5,),
                InkWell(onTap: ()=>Navigator.pushNamed(context, "/help"),child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.feedback,
                      color: Color.fromRGBO(67, 158, 67, 1),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Feedback",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                )),
                Divider(),
                SizedBox(height: 5,),
                InkWell(onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>HelpPage())),child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.info,
                      color: Color.fromRGBO(67, 158, 67, 1),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Help and Info",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                )),
                Divider(),
                FlatButton(child:  Text("Sign out",style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 17,color: Colors.grey.withOpacity(0.7)),),onPressed: (){

                },)
              ])),
    ]
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Colors.white,
        title: Text("Settings",style: TextStyle(color: Colors.black),),
      ),
      body: listWidget(),

    );
  }
}

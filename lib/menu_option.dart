import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuOption extends StatefulWidget {
  _Menu createState() {
    return _Menu();
  }
}

class _Menu extends State<MenuOption> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: Row(
          children: <Widget>[
            Text("Menu option",style: TextStyle(color: Colors.black),),
            SizedBox(width: 170,),
            Icon(Icons.info,color: Color.fromRGBO(67, 151, 67, 1),)
          ],
        ),
      ),
      body: ListView(children: <Widget>[
        Column(
          children: <Widget>[
            SizedBox(height: 10,),
            Center(
              child: Container(
                width: 360,
                height: 130,
                decoration: BoxDecoration(
                  color: Colors.orange.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Center(child: Column(
                  children: <Widget>[
                    SizedBox(height: 40,),
                    Text('Gluten free',style: TextStyle(color: Colors.white,fontSize: 17),),
                    SizedBox(height: 5,),
                    Text('23 eatries',style: TextStyle(color: Colors.white.withOpacity(0.9)),)
                  ],
                ),),
              ),
            ),
            SizedBox(height: 10,),
            Center(
              child: Container(
                width: 360,
                height: 130,
                decoration: BoxDecoration(
                    color: Colors.green.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(8)
                ),
                child: Center(child: Column(
                  children: <Widget>[
                    SizedBox(height: 40,),
                    Text('Vegetarian',style: TextStyle(color: Colors.white,fontSize: 17),),
                    SizedBox(height: 5,),
                    Text('23 eatries',style: TextStyle(color: Colors.white.withOpacity(0.9)),)
                  ],
                ),),
              ),
            ),
            SizedBox(height: 10,),
            Center(
              child: Container(
                width: 360,
                height: 130,
                decoration: BoxDecoration(
                    color: Colors.lightGreen.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(8)
                ),
                child: Center(child: Column(
                  children: <Widget>[
                    SizedBox(height: 40,),
                    Text('Vegan',style: TextStyle(color: Colors.white,fontSize: 17),),
                    SizedBox(height: 5,),
                    Text('23 eatries',style: TextStyle(color: Colors.white.withOpacity(0.9)),)
                  ],
                ),),
              ),
            ),
            SizedBox(height: 10,),
            Center(
              child: Container(
                width: 360,
                height: 130,
                decoration: BoxDecoration(
                    color: Colors.blueAccent.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(8)
                ),
                child: Center(child: Column(
                  children: <Widget>[
                    SizedBox(height: 40,),
                    Text('Dairy free',style: TextStyle(color: Colors.white,fontSize: 17),),
                    SizedBox(height: 5,),
                    Text('23 eatries',style: TextStyle(color: Colors.white.withOpacity(0.9)),)
                  ],
                ),),
              ),
            ),
            SizedBox(height: 10,),
            Center(
              child: Container(
                width: 360,
                height: 130,
                decoration: BoxDecoration(
                    color: Colors.purple.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(8)
                ),
                child: Center(child: Column(
                  children: <Widget>[
                    SizedBox(height: 40,),
                    Text('Lactose free',style: TextStyle(color: Colors.white,fontSize: 17),),
                    SizedBox(height: 5,),
                    Text('23 eatries',style: TextStyle(color: Colors.white.withOpacity(0.9)),)
                  ],
                ),),
              ),
            ),
            SizedBox(height: 10,),
            Center(
              child: Container(
                width: 360,
                height: 130,
                decoration: BoxDecoration(
                    color: Colors.pink.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(8)
                ),
                child: Center(child: Column(
                  children: <Widget>[
                    SizedBox(height: 40,),
                    Text('Egg free',style: TextStyle(color: Colors.white,fontSize: 17),),
                    SizedBox(height: 5,),
                    Text('23 eatries',style: TextStyle(color: Colors.white.withOpacity(0.9)),)
                  ],
                ),),
              ),
            ),
            SizedBox(height: 10,),
            Center(
              child: Container(
                width: 360,
                height: 130,
                decoration: BoxDecoration(
                    color: Colors.yellow.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(8)
                ),
                child: Center(child: Column(
                  children: <Widget>[
                    SizedBox(height: 40,),
                    Text('Fish free',style: TextStyle(color: Colors.white,fontSize: 17),),
                    SizedBox(height: 5,),
                    Text('23 eatries',style: TextStyle(color: Colors.white.withOpacity(0.9)),)
                  ],
                ),),
              ),
            ),
          ],
        )
      ],),
    );
  }
}
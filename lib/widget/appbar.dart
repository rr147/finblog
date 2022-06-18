import 'package:flutter/material.dart';

Widget Appbar(){
  return AppBar(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
            height: 75,
            width: 150,
            child: Image.asset('images/PIGGY-removebg-preview.png', fit: BoxFit.fitHeight)),
        //     Text("PIGGY",style: TextStyle(color: Colors.black,fontSize: 22,fontFamily: 'League Spartan',fontWeight: FontWeight.w500),),
        //     Text("Shots",style: TextStyle(
        //       fontSize: 22,
        //       color: Colors.pinkAccent[200],
        //       fontFamily: 'League Spartan',
        //       fontWeight: FontWeight.w700,),),
      ],
    ),
    //backgroundColor: Colors.orange[200],
    elevation: 0,
  );
}
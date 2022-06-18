import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Padding(
           padding: const EdgeInsets.fromLTRB(10,10,10,0),
           child: Container(
             height: 70,
             width: 120,
             decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50),),),
             // child: Image.asset('images/buss.jpg'),
             child: Stack(
                 alignment: Alignment.center,
                 children: <Widget>[
                   Image.asset('images/buss.jpg'),
                   Text("Bussiness",style: TextStyle(
                     color: Colors.white,
                     fontFamily: 'Brutel',
                     fontWeight: FontWeight.w700,
                     // fontSize: 18,
                   ),),
                 ]
             ),

           ),
         )
      ],
    );
  }
}

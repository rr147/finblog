import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:share_plus/share_plus.dart';




class Inside extends StatefulWidget {
  final String image  , title , body , date;

  Inside(  this.image , this.title , this.body , this.date);
  @override
  State<Inside> createState() => _InsideState();
}

class _InsideState extends State<Inside> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                height: 75,
                width: 150,
                child: Image.asset('images/PIGGY-removebg-preview.png', fit: BoxFit.fitHeight)),
          ],
        ),
        backgroundColor: Colors.lightBlue,
        elevation: 2,
      ),

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Container(
                  height: 200,
                  width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage(
                        'images/${widget.image}'),
                    fit: BoxFit.fitWidth,
                  ),
                ),),
            ),

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20,0,10,0),
            child: Center(child: AutoSizeText("${widget.date}"),),
          ),
          Padding(
            padding: const EdgeInsets.only( right: 20),
            child: IconButton(
              onPressed: (){
                final weburl = 'https://play.google.com/store/apps/details?id=com.kitkagames.fallbuddies';
                final textdata = 'Loved it';
                 Share.share('${textdata} ${weburl}');
              },
                 icon: Icon(Icons.share_rounded)),
          )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20,20,20,4),
              child: AutoSizeText("${widget.title}",
                style: TextStyle(
                  color: Color(0xff333333),
                  fontFamily: 'Brutel',
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20,7,20,10),
              child: AutoSizeText("${widget.body}",
                // overflow: TextOverflow.ellipsis,
                // maxLines: 2,
                style: TextStyle(
                  color: Color(0xff17252A),
                  fontFamily: 'Brutel',
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

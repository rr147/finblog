import 'package:auto_size_text/auto_size_text.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:fin_blog/pages/inside.dart';

Widget Part({required BuildContext context , required String image , required String title , required String body , required String date, required String tag }) {
  return GestureDetector(
    onTap: (){
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Inside(image , title , body , date),
        ),
      );
    },
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(12,18,12,0),
          child: Container(
            width: double.infinity,
            height: 80,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 2.0,
                  color: Colors.blueGrey,
                ),
              ],
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10) ),
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage(
                    'images/$image'),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(12,0,12,0),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20,15,0,0),
                      child: InkWell(
                        onTap: (){},
                        splashColor: Colors.amber,
                        child: Container(
                    height: 22,
                    width: 80,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(15),),
                        color: Colors.transparent,
                    ),
                    child: Center(child: AutoSizeText("$tag", style: TextStyle(
                      fontSize: 5,
                      fontStyle: FontStyle.italic,
                    ),),),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: FavoriteButton(
                        iconColor: Colors.blue,
                        iconSize: 0.1,
                        isFavorite: false,
                        valueChanged: (_isFavourite) {
                          print('Is Favourite $_isFavourite)');
                        },
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20,12,20,4),
                  child: AutoSizeText("$title",
                    style: TextStyle(
                      color: Color(0xff333333),
                      fontFamily: 'Brutel',
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20,0,20,10),
                    child: AutoSizeText("$body",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(
                        color: Color(0xff17252A),
                        fontFamily: 'Brutel',
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 15,bottom: 10),
                      child: Text("$date",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 10,
                        ),),
                    ),
                  ],
                )
              ],
            ),
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 2.0,
                  color: Colors.blueGrey,
                ),
              ],
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10) ),
              color: Colors.grey[50],
            ),
          ),
        ),

      ],
    ),
  );
}




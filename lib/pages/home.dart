import 'package:fin_blog/widget/category.dart';
import 'package:fin_blog/widget/portrait.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';






class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
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
          backgroundColor: Color(0xff3AAFA9),
          elevation: 2,
        ),

        drawer: Drawer(
          child: Column(
            children: [
              ListTile(
               title: Text("hello"),
              ),
            ],
          ),
        ),

        body: MediaQuery.of(context).orientation ==Orientation.portrait
          ? SingleChildScrollView(
            child: Column(
              children: [
                Part(context : context , image: '2.jpg', body: 'How f you are Gsing Text inside a Row, you can put above Text inside Expanded like: side a Rpanded likside a Row, you can put above Text inside Expanded lik ',tag: 'Today special' ,title: 'Why Markets are Going Down?', date: 'Jun 6 ,2022' ),
                Part(context : context ,image: '2.jpg', body: 'How f you are using Text inside a Row, you can put above Text inside Expanded like: ', title: 'This approach doesainer, text,', date: 'Jun 6 ,2022',tag: 'Today ' ),
                Part(context : context ,image: '2.jpg', body: 'How f you are using Text inside a Row, you can put above Text inside Expanded like: ', title: 'This approach doesainer, text,', date: 'Jun 6 ,2022',tag: 'Today special' ),
              ],
            ),
          )
          : GridView(gridDelegate:  SliverGridDelegateWithMaxCrossAxisExtent(crossAxisSpacing: 0, maxCrossAxisExtent: MediaQuery.of(context).size.width*0.5, mainAxisSpacing: 0),
        children: [
          Part(context : context ,image: '2.jpg', body: 'How f you are using Text inside a Row, you can put above Text inside Expanded like: ', title: 'This approach doesainer, text,' , date: 'Jun 6 ,2022',tag: 'Today '),
          Part(context : context ,image: '2.jpg', body: 'How f you are using Text inside a Row, you can put above Text inside Expanded like: ', title: 'This approach doesainer, text,', date: 'Jun 6 ,2022',tag: 'Today special' ),
          Part(context : context ,image: '2.jpg', body: 'How f you are using Text inside a Row, you can put above Text inside Expanded like: ', title: 'This approach doesainer, text,', date: 'Jun 6 ,2022',tag: 'Today special' ),
          Part(context : context ,image: '2.jpg', body: 'How f you are using Text inside a Row, you can put above Text inside Expanded like: ', title: 'This approach doesainer, text,', date: 'Jun 6 ,2022',tag: 'Today special' ),
          Part(context : context ,image: '2.jpg', body: 'How f you are using Text inside a Row, you can put above Text inside Expanded like: ', title: 'This approach doesainer, text,', date: 'Jun 6 ,2022' ,tag: 'Today special'),
        ],
          ),
        backgroundColor: Color(0xffF5F5F5),

    ),
    );
  }
}
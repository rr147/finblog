import 'package:fin_blog/pages/home.dart';
import 'package:fin_blog/pages/info.dart';
import 'package:fin_blog/pages/market.dart';
import 'package:fin_blog/pages/notification.dart';
import 'package:flutter/material.dart';
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    Home(),
    Market(),
    Info(),
    Notify(),
  ];
  int currentIndex=0;
  void onTap(int index){
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xffDEF2F1),
          onTap: onTap,
          currentIndex: currentIndex,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 2,

          items: [
            BottomNavigationBarItem(label:("Home"),icon: Icon(Icons.apps)),
            BottomNavigationBarItem(label:("Market"),icon: Icon(Icons.auto_graph_sharp)),
            BottomNavigationBarItem(label:("Info"),icon: Icon(Icons.bar_chart_sharp)),
            BottomNavigationBarItem(label:("Notification"),icon: Icon(Icons.doorbell_outlined)),
          ],
        ),

        drawer: Drawer(),
      ),
    );
  }
}

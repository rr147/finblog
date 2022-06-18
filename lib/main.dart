import 'package:fin_blog/pages/home.dart';
import 'package:fin_blog/pages/login.dart';
import 'package:fin_blog/pages/main_page.dart';
import 'package:fin_blog/pages/routes.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,

  );
  await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
  FirebaseAuth.instance
      .authStateChanges()
      .listen((User? user) {
    if (user == null) {
      print('User is currently signed out!');
    } else {
      print('User is signed in!');
    }
  });

  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/":(context)=> LoginPage(),
        // MyRoutes.insideRoute : (context) => Inside(),
        MyRoutes.homeRoute: (context) => Home(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}

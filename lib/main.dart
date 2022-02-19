import 'package:flutter/material.dart';
import 'screen/LandingPage.dart';
import 'screen/MainTab.dart';
import 'screen/Login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Belum ditau namanya :)',
      theme: ThemeData(
         primarySwatch: Colors.blue,
      ),
      // home:MainTab(status_screen: false, initialIndex: 0,),
      home:LandingPage(),
    );
  }
}

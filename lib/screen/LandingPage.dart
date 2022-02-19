import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import '../screen/MainTab.dart';

class LandingPage extends StatefulWidget {
  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  
  startSpashScreen() async{
    var duration = const Duration(seconds: 5);
    return Timer(duration, (){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_){
          return MainTab(status_screen: false, initialIndex: 0,);
        })
      );
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startSpashScreen();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.blue,
                Colors.red,
              ],
            )
        ),
        alignment: Alignment.center,
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 190.0,
                height: 190.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/icon/icon.jpeg"))),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text("Loading", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              Container(
                width: 40,
                height: 40,
                child: Image.asset('assets/img/loading.gif', fit: BoxFit.cover,),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

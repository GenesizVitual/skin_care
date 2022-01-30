import 'dart:ui';

import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                        image: AssetImage("assets/icon/icons.png"))),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Judulnya disini",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
              ),

            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class NotFountSolution extends StatelessWidget {
  // const NotFountSolution({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            child: FittedBox(
              child: Image.asset("assets/img/doctor_confius.jpg"),
            ),
          ),
          Text(
            'Skin care tidak ditemukan yang sesaui dengan ciri-ciri kulit anda.',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

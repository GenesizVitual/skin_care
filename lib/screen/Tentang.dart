import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Tentang extends StatelessWidget {
  // const Tentang({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Facial Skin Diagnosis", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          Container(
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(
                width: 2,
              ),
              borderRadius: BorderRadius.circular(20.0)
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/icon/icon.jpeg', height: 100, width: 100, fit: BoxFit.cover,),
            ),
          ),
          Text("Android version: 5.0 atau lebih tinggi", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          Text("Ditinjau oleh Dr. Liya Astuti", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          Text("Dibuat Oleh :Ayu Mustika", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
          Text("STMIK Bina Bangsa kendari", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
          Text("Jurusan Sistem Komputer", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
        ],
      ),
    );
  }
}

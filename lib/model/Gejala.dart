import 'package:flutter/animation.dart';
import 'package:http/http.dart';

class Gejala {
  final String? kode;
  final String? gejala;

  Gejala({this.kode, this.gejala});

  factory Gejala.fromJson(Map<String, dynamic> data){
    return Gejala(
        kode: data['kode'] as String,
        gejala: data['gejala'] as String,
    );
  }

}
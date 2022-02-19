import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../model/ResponseSkinCare.dart';
import 'NotFoundSolution.dart';
import 'RekomendasiSkinCare.dart';
import 'UnrecomendasiSkincare.dart';
import 'package:hexcolor/hexcolor.dart';

class HasilDiagnosis extends StatefulWidget {
  List data_print;
  List data_print_u;
  dynamic status;
  dynamic jenis_kulit;
  dynamic message;

  HasilDiagnosis(
      {Key? key,
      required this.data_print,
      required this.data_print_u,
      required this.status,
      required this.jenis_kulit,
      required this.message})
      : super(key: key);

  @override
  State<HasilDiagnosis> createState() => _HasilDiagnosisState();
}

class _HasilDiagnosisState extends State<HasilDiagnosis> {
  List<ResponseSkinCare> nData = [];
  List<ResponseSkinCare> nsData = [];
  Widget? container;

  void ExtractData() {
    for (int i = 0; i < widget.data_print.length; i++) {
      nData.add(ResponseSkinCare(
          name: widget.data_print[i]['name'],
          image: widget.data_print[i]['image'],
          deskripsi: widget.data_print[i]['deskripsi']));
    }
  }

  void ExtractsData() {
    for (int i = 0; i < widget.data_print_u.length; i++) {
      nsData.add(ResponseSkinCare(
          name: widget.data_print_u[i]['name'],
          image: widget.data_print_u[i]['image']));
    }
  }

  void TabHasilDiagnosa(String tabs_name) {
    if (widget.status == false) {
      setState(() {
        container = NotFountSolution();
      });
    } else {
      if (tabs_name == 'recomended') {
        setState(() {
          container = RekomendasiSkinCare(data: nData);
        });
      } else {
        setState(() {
          container = UnrecomendasiSkincare(data: nsData);
        });
      }
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ExtractData();
    ExtractsData();
    if (widget.status == false) {
      container = NotFountSolution();
    } else {
      container = RekomendasiSkinCare(data: nData);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hasil diagnosa"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight, colors: [
                Colors.red,
                Colors.blue
              ]
              )
          ),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
             Container(
               child: SingleChildScrollView(
                 scrollDirection: Axis.horizontal,
                 child:  Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Container(
                       padding: EdgeInsets.all(8.0),
                       child: TextButton(
                         style: TextButton.styleFrom(
                             backgroundColor: Color(0xffF18265)),
                         onPressed: () {
                           TabHasilDiagnosa("recomended");
                         },
                         child: Text(
                           "Recommeded Skincare",
                           style: TextStyle(
                             color: Color(0xffffffff),
                           ),
                         ),
                       ),
                     ),
                     Container(
                       padding: EdgeInsets.all(8.0),
                       child: TextButton(
                         style: TextButton.styleFrom(
                             backgroundColor: Color(0xffF18265)),
                         onPressed: () {
                           TabHasilDiagnosa("urecomended");
                         },
                         child: Text(
                           "Unrecommeded Skincare",
                           style: TextStyle(
                             color: Color(0xffffffff),
                           ),
                         ),
                       ),
                     ),
                   ],
                 ),
               ),
             ),
              Container(
                child: Card(
                  color: HexColor("#4FBDBA"),
                  child: ListTile(
                    title: Text(
                      "${widget.message}",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      "${widget.jenis_kulit}",
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                child: container,
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:skin_care/screen/Diagnosa.dart';
import 'package:skin_care/screen/JenisKulit.dart';
import 'package:skin_care/screen/SkinCare.dart';
import 'package:skin_care/screen/Tentang.dart';
import 'Beranda.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:skin_care/model/Pengguna.dart';
import '../screen/Login.dart';
class MainTab extends StatefulWidget {
  bool status_screen;
  int initialIndex;
  MainTab({Key? key, required this.status_screen, required this.initialIndex}) : super(key: key);

  @override
  State<MainTab> createState() => _MainTabState();
}

class _MainTabState extends State<MainTab> {
  List judul = [
    "Beranda",
    "Jenis Kulit \n dan ciri-cirinya",
    "Skin Care",
    "Diagnosa",
    // "Tentang Penulis"
  ];

  Widget? default_content;

  late TabController _tabController;

  List<Widget> menu() {
    List<Widget> menus = [];
    for (int i = 0; i < judul.length; i++) {
      menus.add(Card(
        child: Flexible(
          child: ListTile(
            title: Text("${judul[i]}"),
          ),
        ),
      ));
    }
    return menus;
  }

  TabKonten(int tab_index) {
    Widget tabKontens;
    if (tab_index == 1) {
      tabKontens = JenisKulit();
    } else if (tab_index == 2) {
      tabKontens = SkinCare();
    } else if (tab_index == 3) {
      tabKontens = Diagnosa();
    } else {
      tabKontens = Beranda();
    }

    setState(() {
      default_content = tabKontens;
    });
  }


  @override
  void initState() {
    setState(() {
      default_content = Beranda();
    });
    if(widget.status_screen==false){
      default_content = Login();
    }else if(widget.status_screen==true){
      default_content = Diagnosa();
    }else{
      default_content = Login();
    }
    print(widget.status_screen);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      initialIndex: widget.initialIndex,
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'Facial Skin Diagnosis',
              style: TextStyle(fontSize: 16.0),
            ),
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
            bottom: PreferredSize(
                child: TabBar(
                    isScrollable: true,
                    unselectedLabelColor: Colors.white.withOpacity(0.5),
                    indicatorColor: Colors.white,
                    tabs: [
                      Tab(
                        icon: Icon(Icons.dashboard),
                        child: Text('Beranda'),
                      ),
                      Tab(
                        icon: Icon(Icons.android_outlined),
                        child: Text('Jenis Kulit'),
                      ),
                      Tab(
                        icon: Icon(Icons.ac_unit_outlined),
                        child: Text('Skin Care'),
                      ),
                      Tab(
                        icon: Icon(Icons.accessibility_new_rounded),
                        child: Text('Diagnosa'),
                      ),
                      Tab(
                        icon: Icon(Icons.account_circle_sharp),
                        child: Text('Tentang'),
                      ),
                    ]),
                preferredSize: Size.fromHeight(30.0)),
            actions: <Widget>[
              // Padding(
              //   padding: const EdgeInsets.only(right: 16.0),
              //   child: Icon(Icons.add_alert),
              // ),
            ],
          ),
          body: TabBarView(
            children: <Widget>[
              Beranda(),
              JenisKulit(),
              SkinCare(),
              Container(child: default_content),
              Tentang(),
            ],
          )),
    );
  }
}

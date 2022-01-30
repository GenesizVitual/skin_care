import 'package:flutter/material.dart';
import 'package:skin_care/screen/Diagnosa.dart';
import 'package:skin_care/screen/JenisKulit.dart';
import 'package:skin_care/screen/SkinCare.dart';
import 'package:skin_care/screen/Tentang.dart';
import 'Beranda.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:skin_care/model/Pengguna.dart';

class MainTab extends StatefulWidget {
  Pengguna pengguna;

  MainTab({Key? key, required this.pengguna}) : super(key: key);

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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Facial Skin Diagnosis"),
        backgroundColor: HexColor('#F05454'),
      ),
      body: Container(
        color: HexColor('#F5F5F5'),
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              child: Card(
                color: Colors.green[300],
                child: ListTile(
                  leading: const Icon(
                    Icons.account_circle_sharp,
                    size: 50,
                  ),
                  title: Text("Selamat Datang"),
                  subtitle: Text(
                    'Name : ${widget.pengguna.name} \nEmail : ${widget.pengguna.email}',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Container(
              height: 60,
              alignment: Alignment.center,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: 100,
                    margin: EdgeInsets.all(6.0),
                    child: TextButton(
                      onPressed: () {
                        TabKonten(index);
                      },
                      style: TextButton.styleFrom(
                          backgroundColor: HexColor('#30475E')),
                      child: Text(
                        '${judul[index]}',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: HexColor('#ffffff')),
                      ),
                    ),
                  );
                },
                itemCount: judul.length,
              ),
            ),
            Flexible(
              child: Container(
                child: default_content,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext contexts) => AlertDialog(
                    title: const Text("Pentunjuk"),
                    content: SingleChildScrollView(
                      child: Column(
                        children: [
                          Text("Beranda untuk menampilkan informasi tentang skincare"),
                          SizedBox(height: 10,),
                          Text("Jenis kulit untuk menampilkan informasi tentang jenis kulit dan ciri-ciri"),
                          SizedBox(height: 10,),
                          Text("Skincare untuk menampilkan produk skincare beserta manfaat yang baik untuk jenis kulit anda"),
                          SizedBox(height: 10,),
                          Text("Diagnosa bertujuan untuk megetahui jenis kulit anda agar dapat menetukan prooduk skincare yang baik untuk anda: \n"
                              "- Untuk bisa mengetahui jenis kulit anda kami meminta anda untuk mencek ciri-ciri kulit yang sudah tersedia\n- Kemudian tekan tombol cek skincare\n- Jika "
                              "ditemukan jenis kulit anda makan akan menampilkan skincare yang baik untuk anda gunakan"),
                        ],
                      ),
                    ),
                    actions: [
                      TextButton(
                          onPressed: () => Navigator.pop(contexts, 'Kembali'),
                          child: Text("Kembali"))
                    ],
                  ));
        },
        backgroundColor: Color(0xffF18265),
        hoverColor: Color(0xfff37d3e),
        child: const Icon(Icons.info),
        mini: true,
      ),
    );
  }
}

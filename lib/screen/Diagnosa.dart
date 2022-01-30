import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../service/GejalaService.dart';
import '../service/ProsesDiagnosis.dart';
import 'HasilDiagnosis.dart';

class Diagnosa extends StatefulWidget {
  Diagnosa({Key? key}) : super(key: key);

  @override
  _DiagnosaState createState() => _DiagnosaState();
}

class _DiagnosaState extends State<Diagnosa> {
  GejalaService gs = new GejalaService();
  ProsesDiagnosis gsv = new ProsesDiagnosis();
  List<bool> list_check = [];
  Map<String, String> list_val_check = {};

  void load_data_gejala() {
    gs.fectGejala();
  }

  void post_gejala(BuildContext context) {
    gsv.fectHasil(this.list_val_check).then((value) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => HasilDiagnosis(
                    data_print: value['skin_care'],
                    data_print_u: value['skin_ucare'],
                    status: value['status'],
                    jenis_kulit: value['jenis_kulit'],
                    message: value['message'],
                  )));
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    load_data_gejala();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(8.0),
              child: Text(
                  "Pilihlah yang sesuai dengan ciri ciri yang terlihat pada wajah anda"),
            ),
            Container(
              height: 480,
              child: FutureBuilder<List<dynamic>>(
                future: gs.fectGejala(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      itemBuilder: (context, index) {
                        this.list_check.add(false);
                        return Card(
                          child: ListTile(
                            title: Text("${snapshot.data?[index]['kode']}"),
                            subtitle:
                                Text("${snapshot.data?[index]['gejala']}"),
                            trailing: Checkbox(
                              value: this.list_check[index],
                              onChanged: (value) {
                                setState(() {
                                  if (this.list_check[index] == false) {
                                    this.list_check[index] = true;
                                    this.list_val_check.addAll({
                                      "${snapshot.data?[index]['id']}":
                                          "${snapshot.data?[index]['kode']}"
                                    });
                                  } else {
                                    this.list_check[index] = false;
                                    this.list_val_check.remove(index);
                                  }
                                });
                              },
                            ),
                          ),
                        );
                      },
                      itemCount: snapshot.data?.length,
                    );
                  } else {
                    return Container(
                      width: double.infinity,
                      color: HexColor('#ffffff'),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/img/Runningheart.gif'),
                          Text("Sedang load ciri-ciri kulit ..."),
                        ],
                      ),
                    );
                  }
                },
              ),
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              width: double.infinity,
              child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Color(0xffF18265)),
                onPressed: () {
                  post_gejala(context);
                },
                child: Text(
                  "Cek Skincare",
                  style: TextStyle(
                    color: Color(0xffffffff),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

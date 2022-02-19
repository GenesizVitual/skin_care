import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../collection/C_jenis_kulit.dart';
import '../model/JenisKulitModel.dart';

class JenisKulit extends StatefulWidget {
  @override
  State<JenisKulit> createState() => _JenisKulitState();
}

class _JenisKulitState extends State<JenisKulit> {

  List<JenisKulitModel> jenis_kulit_model=[];
  C_jenis_kulit cj = new C_jenis_kulit();

  void data(){
    var datas = cj.static_data();
    for(int i=0; i<datas.length; i++){
      print(datas[i].jenis_kulit);
      jenis_kulit_model.add(JenisKulitModel(datas[i].jenis_kulit, datas[i].deskripsi,datas[i].ciri_ciri,));
    }
 }

 List<Widget> viewjeniskulit(){
    List<Widget> container = [];
    for(int i=0; i<jenis_kulit_model.length; i++){
      container.add(
        Container(
         child: Card(
           shadowColor: Colors.redAccent,
           elevation: 5,
            child: ListTile(
              title: Text("${jenis_kulit_model[i].jenis_kulit}"),
              subtitle: Text("${jenis_kulit_model[i].deskripsi} \n\n ${jenis_kulit_model[i].ciri_ciri}"),
            ),
          ),
        )
      );
    }
    return container;
 }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data();
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Card(
                shadowColor: Colors.redAccent,
                elevation: 5,
                child: ListTile(
                  title: Text(
                    "Jenis Kulit dan Ciri-cirinya",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Column(
                    children: [
                      Container(
                        child: Image.asset(
                          "assets/img/jenis_kulit.jpg",
                          height: 250,
                          width: MediaQuery.of(context).size.width,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                            "Tipe kulit yang sehat terdiri dari kulit normal, berminyak, kering, dan kombinasi. Ada pula tipe kulit mudah berjerawat dan sensitif, tapi kedua tipe ini biasanya dipengaruhi oleh bermacam-macam faktor, termasuk kondisi medis tertentu pada struktur kulit manusia. \n\nBerikut ciri-ciri dari setiap tipe kulit yang sehat dan cara mengenalinya:",
                            textAlign: TextAlign.justify),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: viewjeniskulit(),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

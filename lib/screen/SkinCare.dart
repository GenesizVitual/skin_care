import 'package:flutter/material.dart';
import '../model/SkincareModel.dart';
import '../collection/C_skincare.dart';

class SkinCare extends StatelessWidget {

  List<SkinCareModel> data_skin_care = [];
  C_skincare cs = new C_skincare();

  get_data(){
    var data =cs.data_skin_care();
    for(int i=0; i< data.length; i++){
      data_skin_care.add(SkinCareModel("${data[i].judul}","${data[i].deskripsi}","${data[i].image}"));
    }
  }

  List<Widget> dataList_skinCare(){
    List<Widget> container = [];
    for(int i=0; i<data_skin_care.length; i++){
      container.add(
        Card(
          child: ListTile(
            leading: Container(
              width: 50, height: 200,
              child: FittedBox(
                child: Image.asset("${data_skin_care[i].image}", ),
                fit: BoxFit.fill,
              ),
            ),
            title: Text("${data_skin_care[i].judul}"),
            subtitle: Text("${data_skin_care[i].deskripsi}"),
          ),
        )
      );
    }
    return container;
  }

  @override
  Widget build(BuildContext context) {
    get_data();
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Arti skincare bagi setiap orang tentu berbeda-beda. Hal ini tentu disesuaikan dengan jenis dan masalah kulit yang dialami."
                    "\nAdapun beberapa produk skincare sesuai masalah kulit yang dialami adalah sebagai berikut.",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold), textAlign: TextAlign.justify,),
              ),
            ),
            Container(
              child: Column(
                children: dataList_skinCare(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

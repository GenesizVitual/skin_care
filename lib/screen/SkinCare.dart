import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../model/SkincareModel.dart';
import '../collection/C_skincare.dart';

class SkinCare extends StatelessWidget {
  List<SkinCareModel> data_skin_care = [];
  C_skincare cs = new C_skincare();

  get_data() {
    var data = cs.data_skin_care();
    for (int i = 0; i < data.length; i++) {
      data_skin_care.add(SkinCareModel(
          "${data[i].judul}", "${data[i].deskripsi}", "${data[i].image}"));
    }
  }

  List<Widget> dataList_skinCare(BuildContext context) {
    List<Widget> container = [];
    for (int i = 0; i < data_skin_care.length; i++) {
      container.add(Card(
        shadowColor: Colors.redAccent,
        elevation: 5.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: ListTile(
          onTap: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title:  Container(
                      child: Text("${data_skin_care[i].judul}", style: TextStyle(fontWeight:FontWeight.bold),),
                    ),
                    content: Container(
                      height: 300,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  "${data_skin_care[i].image}",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Text("${data_skin_care[i].deskripsi}", textAlign: TextAlign.justify,)
                          ],
                        ),
                      ),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'OK'),
                        child: const Text('OK'),
                      ),
                    ],
                  );
                });
          },
          title: Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "${data_skin_care[i].image}",
                fit: BoxFit.cover,
              ),
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "${data_skin_care[i].judul}",
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          // subtitle: Text("${data_skin_care[i].deskripsi}"),
        ),
      ));
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
                child: Text(
                  "Arti skincare bagi setiap orang tentu berbeda-beda. Hal ini tentu disesuaikan dengan jenis dan masalah kulit yang dialami."
                  "\nAdapun beberapa produk skincare sesuai masalah kulit yang dialami adalah sebagai berikut.",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Container(
                height: 550,
                child: GridView.count(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 3,
                  children: dataList_skinCare(context),
                )
                // Column(
                //   children: dataList_skinCare(),
                // ),
                )
          ],
        ),
      ),
    );
  }
}

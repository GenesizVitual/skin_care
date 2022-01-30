import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../model/ResponseSkinCare.dart';
import 'package:hexcolor/hexcolor.dart';

class RekomendasiSkinCare extends StatelessWidget {
  List<ResponseSkinCare> data;

  RekomendasiSkinCare({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 480,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: ClipRRect(
                child: Image.asset("${data[index].image}", height: 300, width: 50,),
              ),
              title: Text('${data[index].name}'),
              subtitle: Text('${data[index].deskripsi}'),
            ),
          );
        },
        itemCount: data.length,
      ),
    );
  }
}

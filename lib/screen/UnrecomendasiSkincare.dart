import 'package:flutter/material.dart';
import '../model/ResponseSkinCare.dart';

class UnrecomendasiSkincare extends StatelessWidget {
  List<ResponseSkinCare> data;

  UnrecomendasiSkincare({Key? key,required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 480,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              // leading: Image.asset("${data[index].image}", height: 300, width: 50,),
              title: Text('${data[index].name}'),
            ),
          );
        },
        itemCount: data.length,
      ),
    );
  }
}

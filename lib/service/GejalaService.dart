import '../model/Gejala.dart';
import 'package:http/http.dart' as http;

import 'dart:convert' as convert;

class GejalaService{
  final String base_url = "https://jeniskulit.sayaketik.com/";

  Future<List<dynamic>> fectGejala() async{
    final String endPoint = '${this.base_url}gejalaApi.php';
    var response = await http.get(Uri.parse(endPoint));
    if(response.statusCode == 200){
      return convert.jsonDecode(response.body);
    }else{
      throw Exception('Failed to load album');
    }
  }

}
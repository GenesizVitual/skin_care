import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class ProsesDiagnosis{
  final String base_url = "https://jeniskulit.sayaketik.com/";

  Future fectHasil(Map<String, String>list) async{
    final String endPoint = '${this.base_url}prosesApi.php';
    list.addAll({'submit':'Diagnosis'});
    var response = await http.post(Uri.parse(endPoint), body: list as Map);
    if(response.statusCode == 200){
      list.clear();
      return convert.jsonDecode(response.body);
    }else{
      throw Exception('Failed to load album');
    }
  }

}
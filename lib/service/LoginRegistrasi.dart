import 'package:flutter/cupertino.dart';
import 'package:skin_care/model/Pengguna.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class LoginRegistrasi{

  final String api = "https://jeniskulit.sayaketik.com/";
   bool status = false;

  Future<bool> postRegistrasi(Map<String, dynamic> request) async{
    final String url =  "${this.api}loregApi.php?aksi=registrasi";
    var api = await http.post(Uri.parse(url), body: request);
    if(api.statusCode==200){
      return true;
    }else{
      return false;
    }
  }

  Future<Pengguna> postLogin(Map<String, dynamic> request) async{
    final String url =  "${this.api}loregApi.php?aksi=login";
    var api = await http.post(Uri.parse(url), body: request);
    if(api.statusCode==200){
      dynamic data = convert.jsonDecode(api.body);
      return Pengguna(id: data['id'], name: data['name'], username: data['username'], email: data['email'], password: data['password']);
    }else{
      return  Pengguna(id: null, name: null, username: null, email: null, password: null);
    }
  }

}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../service/LoginRegistrasi.dart';

class Registrasi extends StatefulWidget {
  @override
  State<Registrasi> createState() => _RegistrasiState();
}

class _RegistrasiState extends State<Registrasi> {
  TextEditingController nama_controller = TextEditingController();
  TextEditingController username_controller = TextEditingController();
  TextEditingController email_controller = TextEditingController();
  TextEditingController password_controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String default_val = "";
  String nama = '', username = '', email = '', password = '';
  Map<String, dynamic> request = {};
  Color status_color = Colors.orange;

  void Daftar() {
    LoginRegistrasi d = new LoginRegistrasi();
    request = {
      'name': nama,
      'username': username,
      'email': email,
      'password': password
    };

    d.postRegistrasi(request).then((value){
      if(value == true){
        setState(() {
          default_val = "Akun anda telah dibuat \n silahkan kembali ke halaman login";
          status_color = Colors.green;
        });
      }else{
        setState(() {
          default_val = "Gagal membuat akun";
          status_color = Colors.red;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registrasi"),
        backgroundColor: Color(0xffF18265),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Isilah formulir dibawah ini untuk mendapatkan akun.",
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: double.infinity,
                  child: Text(
                    "Formulir registrasi",
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                TextFormField(
                  controller: nama_controller,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 3, color: Colors.blue),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 3, color: Colors.red),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      labelText: "Masukan nama"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Silahkan masukan nama anda";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  controller: username_controller,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 3, color: Colors.blue),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 3, color: Colors.red),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      labelText: "Masukan nama pengguna"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Silahkan masukan nama pengguna";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  controller: email_controller,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 3, color: Colors.blue),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 3, color: Colors.red),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      labelText: "Masukan email anda"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Silahkan masukan email anda";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  controller: password_controller,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 3, color: Colors.blue),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 3, color: Colors.red),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      labelText: "Masukan password anda"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Silahkan masukan password anda";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: double.infinity,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Color(0xffF18265)),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        setState(() {
                          nama = nama_controller.text;
                          username = username_controller.text;
                          email = email_controller.text;
                          password = password_controller.text;
                        });
                        Daftar();
                      }
                    },
                    child: Text(
                      "Kirim",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  child: Text("${default_val}", style: TextStyle(color: status_color),textAlign: TextAlign.center,),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

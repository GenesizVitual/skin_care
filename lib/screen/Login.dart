import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:skin_care/screen/Registrasi.dart';
import '../service/LoginRegistrasi.dart';
import 'MainTab.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email_controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  TextEditingController password_controller = TextEditingController();
  String email = '', password = '', label = 'Masuk';
  Map<String, dynamic> request = {};

  void masuk(BuildContext context) {
    setState(() {
      label = "Mohon tunggu sebentar...";
    });
    LoginRegistrasi d = new LoginRegistrasi();
    request = {'email': email, 'password': password};
    d.postLogin(request).then((value) {
      if (value.name != null) {
        Navigator.push(context,
            // MaterialPageRoute(builder: (context) => MainTab(pengguna: value)));
            MaterialPageRoute(builder: (context) => MainTab(status_screen: true, initialIndex: 3,)));
      } else {
        setState(() {
          label = "Gagal Login, Silahkan coba masuk lagi";
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Container(
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/img/background.jpg'),
                fit: BoxFit.cover),
          ),
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50.0,
                ),
                Container(
                  width: double.infinity,
                  child: Text(
                    "Facial Skin Diagnosis",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 150,
                  width: 150,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: Image.asset('assets/icon/icon.jpeg'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Untuk bisa melakukan diagnosa. Anda harus mendapatkan akun. jika anda telah mempunyai akun silahkan login dan jika belum silahkan lakukan registrasi",
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: double.infinity,
                  child: Text(
                    "Isi Formulir dibawah ini.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 45.0,
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
                          email = email_controller.text;
                          password = password_controller.text;
                        });
                        masuk(context);
                      }
                    },
                    child: Text(
                      label,
                      style: TextStyle(
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: double.infinity,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Color(0xffF18265)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Registrasi()));
                    },
                    child: Text(
                      "Daftar",
                      style: TextStyle(
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

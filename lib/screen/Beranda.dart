import 'package:flutter/material.dart';

class Beranda extends StatelessWidget {
  // const Beranda({Key? key}) : super(key: key);

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
                child: Image.asset("assets/img/banner.jpg"),
              ),
            ),
            Card(
                shadowColor: Colors.redAccent,
                elevation: 5,
                child: Padding(
              padding: EdgeInsets.all(5.0),
              child: ListTile(
                title: Text(
                  "Apa itu skin care...?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Column(
                  children: [
                    Text(
                      "Skincare adalah serangkaian perawatan kulit yang dapat merawat kesehatan dan kecantikan kulit Anda. Tak cukup dari dalam dengan makanan yang Anda konsumsi, merawat kulit juga bisa dilakukan dari luar.",
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Text("Arti skincare dan macam-macam skincare.",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 16.0),
                          textAlign: TextAlign.justify),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                          "Seperti yang sudah disebutkan sebelumnya, arti skincare adalah sejumlah aktivitas yang dapat membuat kulit tampak sehat dan terawat.\n"
                          "Berdasarkan pengertian skincare yang sudah dijelaskan di atas, manfaat menggunakan skincare adalah dapat membantu menjaga kesehatan kulit secara keseluruhan sekaligus memperbaiki masalah kulit yang dialami, seperti jerawat, bekas jerawat, bintik hitam, keriput, dan lainnya.\n\n"
                          "Macam-macam skincare adalah sebagai berikut:",
                          style: TextStyle(fontSize: 15.0),
                          textAlign: TextAlign.justify),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Text("1. Sabun pembersih wajah",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 16.0),
                          textAlign: TextAlign.justify),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                          "Salah satu dari sekian macam-macam skincare yang paling penting adalah sabun pembersih wajah.\n"
                          "Sabun pembersih wajah sesuai jenis kulitnya terbagi menjadi sabun cuci muka berbasis air dan minyak.\n"
                          "Sabun cuci muka berbasis air cocok digunakan oleh pemilik kulit berminyak dan kulit berjerawat.\n"
                          "Sabun cuci muka berbasis air biasanya mengandung surfaktan yang berfungsi memungkinkan air untuk membilas penumpukan kotoran dan keringat.\n",
                          style: TextStyle(fontSize: 15.0),
                          textAlign: TextAlign.justify),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Text("2. Toner wajah",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 16.0),
                          textAlign: TextAlign.justify),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                          "Toner wajah adalah macam-macam skincare berikutnya yang perlu digunakan.\n"
                          "Anda bisa memilih kandungan toner wajah yang tepat sesuai jenis kulit.\n"
                          "Penggunaan kandungan toner yang tidak sesuai dengan jenis kulit wajah dapat mengurangi keefektifannya dan berpotensi menimbulkan masalah kulit baru.\n"
                          "Fungsi toner wajah adalah membantu mengangkat sisa-sisa kotoran dan minyak yang masih menempel setelah Anda membersihkan wajah.\n",
                          style: TextStyle(fontSize: 15.0),
                          textAlign: TextAlign.justify),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Text("3. Pelembap",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 16.0),
                          textAlign: TextAlign.justify),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                          "Penggunaan pelembap atau moisturizer merupakan bagian dari macam-macam skincare yang perlu digunakan \n Pelembap bertujuan untuk melembapkan kulit serta menghaluskannya.\n"
                          "Selain itu, pelembap juga berperan untuk menjaga struktur alami kulit, menyeimbangkan pH kulit.\n"
                          "Penggunaan kandungan toner yang tidak sesuai dengan jenis kulit wajah dapat mengurangi keefektifannya dan berpotensi menimbulkan masalah kulit baru.\n"
                          "melindungi kulit dari kerusakan paparan radikal bebas, dan membantu sel-sel kulit agar dapat bekerja lebih maksimal.\n"
                          "Bagi Anda yang memiliki kulit wajah kering, pilihlah pelembap dengan tekstur krim. Tekstur krim yang lebih tebal bisa dipilih oleh pemilik kulit wajah normal dan kulit wajah kombinasi.\n"
                          "Sementara, pelembap bertekstur cair atau gel cocok digunakan oleh tipe kulit wajah berminyak.\n",
                          style: TextStyle(fontSize: 15.0),
                          textAlign: TextAlign.justify),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Text("4. Sunscreen atau tabir surya",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 16.0),
                          textAlign: TextAlign.justify),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                          "Macam-macam skincare berikutnya adalah menggunakan sunscreen atau tabir surya.\n"
                          "Ini karena paparan sinar matahari berlebih dapat menyebabkan kerusakan kulit, bahkan meningkatkan risiko kanker kulit.\n"
                          "Paparan sinar matahari inilah yang sedikit demi sedikit dapat menyebabkan timbulnya kerutan dan bintik-bintik hitam di wajah.\n"
                          "Maka dari itu, penggunaan sunscreen atau tabir surya sangatlah penting sebagai skincare routine.\n"
                          "Anda bisa menggunakan tabir surya atau sunscreen sebagai produk skincare untuk pemula yang sebaiknya digunakan, terutama pada pagi hari.\n"
                          "Penggunaan sunscreen dapat membantu melindungi wajah dari penuaan akibat paparan sinar matahari sehingga memperlambat tanda-tanda penuaan.\n"
                          "Anda disarankan untuk menggunakan sunscreen dengan SPF minimal 30.\n"
                          "Oleskan sunscreen 15 menit sebelum pergi ke luar rumah.",
                          style: TextStyle(fontSize: 15.0),
                          textAlign: TextAlign.justify),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Text("5. Serum wajah",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 16.0),
                          textAlign: TextAlign.justify),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                          "Anda mungkin sudah sering mendengar macam-macam skincare lainnya, seperti serum wajah \n. Serum wajah adalah cairan bertekstur ringan yang mengandung konsentrasi zat aktif lebih tinggi.",
                          style: TextStyle(fontSize: 15.0),
                          textAlign: TextAlign.justify),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Text("6. Essence",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 16.0),
                          textAlign: TextAlign.justify),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                          "Essence adalah cairan berbahan dasar air dengan konsentrasi bahan aktif tinggi yang bertujuan untuk melembapkan kulit dan membantu produk skincare selanjutnya agar dapat meresap lebih baik ke dalam kulit.",
                          style: TextStyle(fontSize: 15.0),
                          textAlign: TextAlign.justify),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Text("7. Ampoule",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 16.0),
                          textAlign: TextAlign.justify),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                          " ampoule cenderung lebih kuat lagi dalam menjalankan fungsi-fungsi tersebut karena mampu mengatasi masalah kulit yang spesifik dalam waktu lebih cepat dibandingkan serum dan essence.",
                          style: TextStyle(fontSize: 15.0),
                          textAlign: TextAlign.justify),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Text("8. Krim mata atau eye cream",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 16.0),
                          textAlign: TextAlign.justify),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                          "Pada malam hari, selain macam-macam skincare di atas, penggunaan krim mata atau eye cream mungkin diperlukan. Terutama, bagi Anda yang memiliki masalah mata panda, kantung mata, serta kerutan di area mata.",
                          style: TextStyle(fontSize: 15.0),
                          textAlign: TextAlign.justify),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Text("9. Face oil",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 16.0),
                          textAlign: TextAlign.justify),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                          "Face oil bisa digunakan sebagai skincare routine malam hari.Namun, bagi Anda yang memiliki kulit wajah berminyak dan cenderung mudah berjerawat, sebaiknya hindari menggunakan face oil.",
                          style: TextStyle(fontSize: 15.0),
                          textAlign: TextAlign.justify),
                    ),
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}

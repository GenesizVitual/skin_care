
import '../model/JenisKulitModel.dart';

class C_jenis_kulit {


  List<JenisKulitModel>static_data() {
    List<JenisKulitModel> container=[];
    container.add(JenisKulitModel(
        "Kulit normal",
        "jenis kulit normal dalam melakukan perawatan wajah jauh lebih mudah bila dalam perawatan dibandingkan dengan jenis kulit wajah lainnya.",
        "- Pori-Pori Kecil \n -Wajah berseri \n -Tidak sensitif \n -permukaan kulit lebat \n -elastis"));

    container.add(JenisKulitModel(
        "Kulit kering",
        "Jenis kulit ini memiliki ciri-ciri seringkali mengelupas dan mudah ada kerutan. Selain itu ciri-ciri yang lain adalah kulit kelihatan tidak cerah dan jika tergores akan kelihatan bekas putih yang menandakan kalau kulit bersisik.",
        "- Pori-pori hapor tidak terlihat \n -Kulit kasar \n -Bercak merah \n -Kurang elastis \n -Garis halus lebih terlihat"));

    container.add(JenisKulitModel(
        "Kulit berminyak",
        "Jenis Kulit berminyak memiliki Pori-pori besar menjadi tanda bahwa jenis kulit berminyak karena selalu terlihat mengkilap dan mudah ditumbuhi jerawat dan komedo.",
        "- Pori-pori wajah terlihat besar \n -Kulit berminyak/mengkilap \n -Komedo \n -Jerawat"));

    container.add(JenisKulitModel(
        "Kulit kombinasi",
        "Jenis kulit wajah yang kombinasi yaitu merupakan perpaduan antara kulit wajah yang kering dan kulit wajah yang berminyak. pada umumnya terdapat pada daerah T-zone bagian ini menangkup dahi, hidung, dan dagu bahwa yang memiliki kulit kombinasi wajah akan selalu terlihat lembut dan tidak cepat keriput.",
        "- berminyak bagian dahi hidung, dagu \n -komedo \n -Pori-pori besar"));

    container.add(JenisKulitModel(
        "Kulit Sensitif ",
        "Jenis Kulit sensitif dapat dilihat dari sering munculnya masalah yang diakibatkan oleh tidak cocok dalam penggunaan kosmetik, paparan sinar matahari maupun angin dan udara yang pada jenis kulit lainnya tidak mengakibatkan akibat terlalu buruk.",
        "- Kemerahan \n - gatal \n - kering \n - mudah berjerawat \n - sensitif terhadap matahari \n - kulit mudah beraksi terhadap produk berbahan kimia"));

    return container;
  }
}

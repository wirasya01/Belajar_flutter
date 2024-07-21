import 'package:flutter/material.dart';

import 'detail_band_screen.dart';

class ListBandScreen extends StatelessWidget {
  final List<Map<String, dynamic>> bandData = [
    {
      "nama_band": "Avenged Sevenfold",
      "asal_negara": "Amerika",
      "image": "assets/images/A7X.jpeg",
      "gallery": [
        "assets/images/A7X1.jpeg",
        "assets/images/A7X2.jpeg",
        "assets/images/A7X3.jpeg"
      ],
      "desc":
          "Avenged Sevenfold (disingkat A7X ) adalah band heavy metal Amerika dari Huntington Beach, California , dibentuk pada tahun 1999. Formasi band saat ini terdiri dari vokalis M. Shadows , gitaris ritme Zacky Vengeance, gitaris utama Synyster Gates , bassis Johnny Christ, dan drummer Brooks Wackerman.",
    },
    {
      "nama_band": "My Chemical Romance",
      "asal_negara": "Amerika",
      "image": "assets/images/MCR.jpg",
      "gallery": [
        "assets/images/MCR1.jpg",
        "assets/images/MCR2.jpg",
        "assets/images/MCR3.jpg"
      ],
      "desc":
          "My Chemical Romance adalah grup band yang menurut media bergenre pop punk, post-hardcore, ('punk revival'), rock alternatif. Namun grup ini mendeskripsikan musik mereka sebagai musik rock atau pop yang kasar dan menolak diklasifikasikan sebagai emo.",
    },
    {
      "nama_band": "Bring Me The Horizon",
      "asal_negara": "Amerika",
      "image": "assets/images/BMTH.jpg",
      "gallery": [
        "assets/images/BMTH1.jpg",
        "assets/images/BMTH2.jpg",
        "assets/images/BMTH3.jpg"
      ],
      "desc":
          "Bring Me the Horizon (BMTH) adalah grup musik rock Inggris yang dibentuk di Sheffield pada tahun 2004 Saat ini grup ini digawangi vokalis Oliver Sykes gitaris Lee Malia bassis Matt Kean dan drummer Matt Nicholls.",
    },
    {
      "nama_band": "The Panturas",
      "asal_negara": "Indonesia",
      "image": "assets/images/thep.jpg",
      "gallery": [
        "assets/images/tp1.jpg",
        "assets/images/tp2.jpg",
        "assets/images/tp3.jpg"
      ],
      "desc":
          "The Panturas merupakan sebuah grup musik Indonesia asal Kota Bandung, Jawa Barat[butuh rujukan]. The Panturas dibentuk pada tahun 2015 oleh Abyan Nabilio, Surya Fikri, Bagus Patria, dan Rizal Taufik. Sepanjang kariernya mereka sudah merilis sebanyak dua album.",
    },
    {
      "nama_band": "Dewa 19",
      "asal_negara": "Indonesia",
      "image": "assets/images/dewa.jpg",
      "gallery": [
        "assets/images/dewa1.jpg",
        "assets/images/dewa2.jpg",
        "assets/images/dewa3.jpg"
      ],
      "desc":
          "Dewa 19 (diucapkan dalam bahasa Indonesia sebagai Dewa Sembilan Belas ) adalah sebuah band rock Indonesia asal Surabaya , Jawa Timur , yang dipimpin oleh penyanyi-penulis lagu Ahmad Dhani . Bersama God Bless dan Slank , mereka dijuluki sebagai salah satu band rock terhebat dalam sejarah musik populer Indonesia.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Destinasi Wisata'),
        backgroundColor: Colors.white.withOpacity(1),
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView.builder(
            itemCount: bandData.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailBandScreen(
                        nama_band: bandData[index]["nama_band"],
                        negara: bandData[index]["negara"],
                        image: bandData[index]["image"],
                        gallery: bandData[index]["gallery"],
                        desc: bandData[index]["desc"],
                      ),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.bottomLeft,
                  height: 200,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage("${bandData[index]["image"]}"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black.withOpacity(0.5),
                    ),
                    child: Text(
                      "${bandData[index]["nama_band"]} - ${bandData[index]["asal_negara"]}",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.orangeAccent,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
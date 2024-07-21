import 'package:flutter/material.dart';
import 'package:myapp/band/about_band_screen.dart';
import 'package:myapp/band/band_screen.dart';
import 'package:myapp/band/home.screen.dart';
import 'package:myapp/container_widget.dart';
import 'package:myapp/listview/latihan.dart';
import 'package:myapp/listview/latihan1.dart';
import 'package:myapp/listview/list_basic.dart';
import 'package:myapp/listview/list_builder.dart';
import 'package:myapp/listview/list_separated.dart';
import 'package:myapp/row_column/column_widget.dart';
import 'package:myapp/row_column/latihan.dart';
import 'package:myapp/row_column/row_column_widget.dart';
import 'package:myapp/row_column/row_widget.dart';
import 'package:myapp/row_column/row_widget.dart';
import 'package:myapp/screen/about_screen.dart';
import 'package:myapp/screen/home_screen.dart';
import 'package:myapp/screen/wisata_screen.dart';
import 'package:myapp/tugas.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "home": (context) => const HomeBand(),
        "/about_band": (context) => const AboutBandScreen(),
        "/band": (context) => ListBandScreen(),
      },
      initialRoute: "home",
      home: Scaffold(
        appBar: AppBar(
          title: Text('Belajar Flutter'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: HomeBand(),
      ),
    );
  }
}




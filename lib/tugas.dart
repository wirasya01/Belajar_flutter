import 'package:flutter/material.dart';

class Latihan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      color: Colors.grey[300],
                      child: Center(
                        child: Container(
                          width: 150,
                          height: 100,
                          child: Image.network(
                            'https://pklsmk.com/wp-content/uploads/2022/02/5a1e12ade5d4d.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 150,
                      height: 150,
                      color: Colors.grey[300],
                      child: Center(
                        child: Container(
                          width: 150,
                          height: 100,
                          child: Image.network(
                            'https://dewantara.storage.edulogy.id/file/school/logo/2021/10/05/download-2.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  color: Colors.grey[300],
                  padding: EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                       child: Image.network(
                            'https://smkassalaambandung.sch.id/img/sakola.jpg',
                            fit: BoxFit.cover,
                          ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Text(
                          'SMK Assalaam Bandung.',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  color: Colors.grey[300],
                  padding: EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        child: Image.network(
                            'https://sekolahassalaam.sch.id/wp-content/uploads/2022/11/SMA-min.jpg',
                            fit: BoxFit.cover,
                          ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Text(
                          'SMA Assalaam Bandung',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
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

void main() {
  runApp(Latihan());
}

import 'package:flutter/material.dart';

class LatihanListView extends StatelessWidget {
  final data = [
    {'name': 'Ujang Balok', 'umur': 38, 'alamat': 'Bojong Honey'},
    {'name': 'Mahmud alexander', 'umur': 28, 'alamat': 'Sukolilo'},
    {'name': 'Aceng ferdinand', 'umur': 18, 'alamat': 'Heulang Honey'},
    {'name': 'DD nun', 'umur': 25, 'alamat': 'Pameungpek'},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return Card(
          color: Colors.grey[400],
          child: Column(
            children: [
              Text('Nama :${data[index]['name']}'),
              Text('Umur :${data[index]['umur']}'),
              Text('Alamat :${data[index]['alamat']}')
            ],
          ),
        );
      },
    );
  }
}
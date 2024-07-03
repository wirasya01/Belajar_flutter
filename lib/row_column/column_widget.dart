import 'package:flutter/material.dart';

class BelajarColumn extends StatelessWidget {
  const BelajarColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text('ini column 1 isi 1'),
        Text('ini column 1 isi 2'),
        Text('ini column 1 isi 3'),
      ],
    );
  }
}
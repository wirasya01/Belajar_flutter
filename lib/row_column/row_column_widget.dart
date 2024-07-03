import 'package:flutter/material.dart';
 
class BelajarRowColumn extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text('text'),
        Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Text('text'),
          Text('text'),
        ],),
        Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text('Text'),
            Text('Text'),
            Text('Text'),
          ],)
      ],
    );
  }
}
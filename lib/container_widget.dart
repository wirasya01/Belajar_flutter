import 'package:flutter/material.dart';

class BelajarContainer extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Container(
      width: double.infinity,
      height: double.infinity, 
      margin: EdgeInsets.all(10), 
      decoration: BoxDecoration( 
         color: Colors.amberAccent, 
         borderRadius: BorderRadius.circular(10), 
         image: DecorationImage(
          image: NetworkImage(
            'https://cdn11.bigcommerce.com/s-ydriczk/images/stencil/1500x1500/products/89970/97358/black-panther-wakanda-forever-advance-style-original-movie-poster-us-one-sheet-buy-now-at-starstills__30111.1670496767.jpg?c=2&imbypass=on'),
            fit: BoxFit.cover,
         ),
      ),
      child: Center(
        child: Text(
          "Wakanda Forever", 
          style: TextStyle(
            fontSize: 24, 
            fontWeight: FontWeight.bold, 
            color: Colors.white
          )
        ))
    );
  }
}
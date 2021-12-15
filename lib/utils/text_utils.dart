import 'package:flutter/material.dart';

class TextUtils extends StatelessWidget {
    final String textheading;
  const TextUtils({ Key? key, required this.textheading }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Text( 
        textheading , 
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold
          ),));
  }
}
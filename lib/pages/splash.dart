import 'dart:async';

import 'package:ctynest/pages/phone_number.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds:3),(){
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const PhoneNumber() ), (route) => false);
    });
    return Scaffold(
      backgroundColor: const Color(0xFFFFE1CE),
      body: Center(
        child: Container(
          // ignore: prefer_const_constructors
          width:250,
          height:250,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(500),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 5,
                blurRadius:7,
                offset: const Offset(3.0, 8.0),
              )
            ]
          ),
          child:Center(
            child: Container(
              width: 180,
             decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/ctynest_png.png',),

                )
            ),
            ),
          ),
        )
      ),
    );
  }
}
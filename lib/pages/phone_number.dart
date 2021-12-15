import 'package:ctynest/pages/home.dart';
import 'package:ctynest/widgets/splash_grid.dart';
import 'package:flutter/material.dart';

class PhoneNumber extends StatefulWidget {
  const PhoneNumber({ Key? key }) : super(key: key);

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFFFE1CE),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const SizedBox(height: 100,),
                const SplashGrid(),
                const SizedBox(height: 50,),
                const Text( 'Easy, reliable way to take \ncare of your home',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: 
                Color(0xFFFF6600))),
                const SizedBox(height: 20,),
                // ignore: avoid_unnecessary_containers
                Container(
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: const TextField(
                          keyboardType: TextInputType.phone,
                          maxLength: 10,
                          decoration: InputDecoration(
                            hintText: "Phone Number",
                            // labelText:"Phone Number",
                            counterText: "",
                            border: InputBorder.none
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                MaterialButton(
                  color: const Color(0xFFFF6600),
                  minWidth: double.infinity,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 30),
                  onPressed: (){
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => HomePage() ), (route) => false);
                  },
                  child: const Text("Request OTP",style: TextStyle(color:Colors.white ),)
                ),

              ],
            ),
          ),
        )
      ),
    );
  }
}
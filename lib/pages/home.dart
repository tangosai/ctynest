import 'package:ctynest/widgets/home_page_widgets/construction_home.dart';
import 'package:ctynest/widgets/home_page_widgets/lifestye_home.dart';
import 'package:ctynest/widgets/home_page_widgets/maintenance_home.dart';
import 'package:ctynest/widgets/slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({ Key? key }) : super(key: key);

  // int initialPosition = 0;
  //  void navigationBar(int index) {
  //   setState(() {
  //     initialPosition = index;
  //   });
  // }

  // final List<Widget> _children = [
  //   const Center(child: Text("data"),),
  // ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFEEEEEE),
        // appBar: AppBar(
        //   elevation: 0,
        //   backgroundColor: const Color(0xFFFF6600),
        //   // leading: const Icon(Icons.menu,color: Colors.black,),
        //   title: const Text("Happy at your home",style:TextStyle(
            
        //   )),
        //   // ignore: prefer_const_literals_to_create_immutables
        //   actions: [
        //     const Icon(Icons.search,),
        //     const Padding(
        //       padding: EdgeInsets.symmetric(horizontal: 10),
        //       child:CircleAvatar(
        //         backgroundImage: AssetImage('assets/images/pexels-photo-220453.webp'),
        //       ) ,
        //     ),
            
        //   ],
        // ),
        body: SingleChildScrollView(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Container(
                width: double.infinity,
                padding:const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                   const SizedBox(height: 20,),
                   RichText(
                     text: const TextSpan(
                       text:"Happy ",
                       style: TextStyle(fontSize: 30,color: Color(0xFFFF6600),fontWeight: FontWeight.bold),
                       children: [
                         TextSpan(
                       text:"at your home",
                       style: TextStyle(fontSize: 30,color: Color(0xFF000000),fontWeight: FontWeight.bold)
                       ),
                       ]
                       ),
                       ),
                   const SizedBox(height: 5,),
                   const Text('Vizag',style: TextStyle(fontSize: 15,color: Color(0xFFFF6600))),
                   const SizedBox(height: 20,),
                  ],
                )
              ),
              
              const SliderWidgets(),
              const SizedBox(height: 20,),
              const ConstructionHome(),
              const LifestyleHome(),
              const MaintenanceHome(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          // currentIndex: initialPosition,
          // onTap: initialPosition,
          backgroundColor: Colors.white,
          // showUnselectedLabels: false,
          // showSelectedLabels: false,
          selectedItemColor: const Color(0xFFFF6600),
          unselectedItemColor: Colors.grey.shade500,
          type: BottomNavigationBarType.fixed,
          items: const[
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
            BottomNavigationBarItem(icon: Icon(Icons.format_list_bulleted),label: "Orders"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
          ],
        ),
      ),
    );
  }

}
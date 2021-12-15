import 'package:ctynest/data/data.dart';
import 'package:ctynest/utils/text_utils.dart';
import 'package:flutter/material.dart';

class ConstructionHome extends StatelessWidget {
  const ConstructionHome({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15)
        ),
        child: Column(
          children: [
            const TextUtils(textheading: 'Construction & Renovation',),
            const SizedBox(height:20,),
            GridView.builder(
             shrinkWrap: true,
             physics:const NeverScrollableScrollPhysics(),
             gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
               crossAxisCount: 4,
               childAspectRatio: 0.9,
               crossAxisSpacing: 10.0,
               mainAxisSpacing: 10.0,
              ), 
              itemCount:constructionHomeContent.length,
              itemBuilder: (context,index) { 

              return Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFF4ED),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Image.asset(constructionHomeContent[index][1], height: 30),
                  ),
                  const SizedBox(height: 8,),
                  Text(constructionHomeContent[index][0], style: const TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
                ],
              );
              },)],),),);}}
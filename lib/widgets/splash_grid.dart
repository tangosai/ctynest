import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class SplashGrid extends StatefulWidget {
  const SplashGrid({ Key? key }) : super(key: key);

  @override
  _SplashGridState createState() => _SplashGridState();
}

class _SplashGridState extends State<SplashGrid> {
  List<List> services = [
    ["Cleaning", 'https://img.icons8.com/external-vitaliy-gorbachev-flat-vitaly-gorbachev/2x/external-cleaning-labour-day-vitaliy-gorbachev-flat-vitaly-gorbachev.png'],
    ['Plumber', 'https://img.icons8.com/external-vitaliy-gorbachev-flat-vitaly-gorbachev/2x/external-plumber-labour-day-vitaliy-gorbachev-flat-vitaly-gorbachev.png'],
    ['Electrician', 'https://img.icons8.com/external-wanicon-flat-wanicon/2x/external-multimeter-car-service-wanicon-flat-wanicon.png'],
    ['Painter', 'https://img.icons8.com/external-itim2101-flat-itim2101/2x/external-painter-male-occupation-avatar-itim2101-flat-itim2101.png'],
    ['Carpenter', 'https://img.icons8.com/fluency/2x/drill.png'],
    ['Gardener', 'https://img.icons8.com/external-itim2101-flat-itim2101/2x/external-gardener-male-occupation-avatar-itim2101-flat-itim2101.png'],
    ['Tailor', 'https://img.icons8.com/fluency/2x/sewing-machine.png'],
    ['Maid', 'https://img.icons8.com/color/2x/housekeeper-female.png'],
    ['Driver', 'https://img.icons8.com/external-sbts2018-lineal-color-sbts2018/2x/external-driver-women-profession-sbts2018-lineal-color-sbts2018.png'],
  ];

  int selectedService = 4;

  @override
  void initState() {
    // Randomly select from service list every 2 seconds
    Timer.periodic(const Duration(seconds: 1), (timer) { 
      setState(() {
        selectedService = Random().nextInt(services.length);
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics:const NeverScrollableScrollPhysics(),
      gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1.0,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        ), 
      itemCount:services.length,
      itemBuilder: (context,index) {
        return Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: selectedService == index ? Colors.white : Colors.grey.withOpacity(0),
            border: Border.all(
              color: selectedService == index ? Colors.orangeAccent : Colors.grey.shade400,
              width: 2.0,
              ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              const SizedBox(height: 10,),
              Image.network(services[index][1], height: 30),
              const SizedBox(height: 10,),
              Text(services[index][0], style: const TextStyle(fontSize: 14),)
            ],
          ),
        );
      }
    
      );
  }
}
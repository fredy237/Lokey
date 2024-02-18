import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() {
    return  _Home();
  }
  
}

class _Home extends State<Home>{
  late String  submitted;
  late String changed ;
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        
           children: [   
            const SizedBox(height: 10.0,)  ,
            Center(
              child:       Container(
  width: 230,
  height: 142,
  decoration: const BoxDecoration(
    image: DecorationImage(
      image: AssetImage("asset/LOKE-unscreen_static.png"),
      fit: BoxFit.cover,
    ),
  ),
),
            ),
            
      
  



           ],
           
        )
        
    );
  }
  

  
}
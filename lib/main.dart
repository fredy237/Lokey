import 'package:flutter/material.dart';

import 'src/screens/homepage.dart';
import 'src/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    
    return  MaterialApp(
      title: 'Lokey',
      theme:  ThemeData(
        primarySwatch: Colors.blue
      ),
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
 
}




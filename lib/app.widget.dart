import 'package:flutter/material.dart';

import 'app.home.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'operaciones',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFFF3AB5)),
      ),
      home: const AppHome(),
    );
  }
}
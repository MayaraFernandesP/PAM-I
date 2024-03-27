import 'package:flutter/material.dart';
import 'package:soma/home_page.dart';

class Aplication extends StatelessWidget {
  const Aplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
      ),
      home: const HomePage(),
    );
  }
}
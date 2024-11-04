import 'package:demo_instagram/pages/instafeed.dart';
import 'package:demo_instagram/pages/menu.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(Insta());
}

class Insta extends StatelessWidget {
  const Insta({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Mymenu(),
    );
  }
}

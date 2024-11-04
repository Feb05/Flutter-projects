import 'package:demo_instagram/pages/Profile.dart';
import 'package:demo_instagram/pages/Search.dart';
import 'package:demo_instagram/pages/instafeed.dart';
import 'package:flutter/material.dart';

class Mymenu extends StatefulWidget {
  const Mymenu({super.key});

  @override
  State<Mymenu> createState() => _MymenuState();
}

class _MymenuState extends State<Mymenu> {
  final List screens=[Instagramfeed(),Search(),Profile()];
  int currentIndexValue=0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar( title: Text("Instagram"),
          backgroundColor: Colors.pinkAccent),
      body: screens[currentIndexValue],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndexValue,
        onTap: (index){
          setState(() {
            currentIndexValue=index;
          });
        },
          items: [
            BottomNavigationBarItem(
            icon: Icon(Icons.house),label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),label: "Profile"),
      ])
    );
  }
}

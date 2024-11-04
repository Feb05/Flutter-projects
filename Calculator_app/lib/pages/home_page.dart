import 'package:calculator_app/pages/add.dart';
import 'package:calculator_app/pages/div.dart';
import 'package:calculator_app/pages/mul.dart';
import 'package:calculator_app/pages/sub.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
                height:100,
                width: 300,
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>Addition()));
                }, child: Text("Addition"),
                  style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(fontSize: 25),
                      backgroundColor: Colors.orange.shade100,
                      foregroundColor: Colors.black),)),
          ),
          SizedBox(height:20),
          SizedBox(
              height:100,
              width: 300,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>Subtraction()));}, child: Text("Subtraction"),
                  style: ElevatedButton.styleFrom(
                      textStyle: TextStyle(fontSize: 25),
                      backgroundColor: Colors.orange.shade100,
                      foregroundColor: Colors.black))),
          SizedBox(height:20),
          SizedBox(
              height:100,
              width: 300,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>Multiplication()));
              }, child: Text("Multiplication"),
                  style: ElevatedButton.styleFrom(
                      textStyle: TextStyle(fontSize: 25),
                      backgroundColor: Colors.orange.shade100,
                      foregroundColor: Colors.black))),
          SizedBox(height:20),
          SizedBox(
              height:100,
              width: 300,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>Division()));
              }, child: Text("Division"),
                  style: ElevatedButton.styleFrom(
                      textStyle: TextStyle(fontSize: 25),
                      backgroundColor: Colors.orange.shade100,
                      foregroundColor: Colors.black))),
          SizedBox(height:20),
        ],
      ),
    );
  }
}

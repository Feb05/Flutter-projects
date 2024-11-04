import 'package:calculator_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class Division extends StatefulWidget {
  Division({super.key});

  @override
  State<Division> createState() => _DivisionState();
}

class _DivisionState extends State<Division> {
  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();
  String output="0";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Scaffold(
          appBar: AppBar(title: Text("Division"),),
          body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: num1,
                  decoration: InputDecoration(
                    labelText: "Enter 1st Number",
                    border: OutlineInputBorder(),
                  ),),
                SizedBox(height: 30),
                TextField(
                  controller: num2,
                  decoration: InputDecoration(
                    labelText: "Enter 2nd Number",
                    border: OutlineInputBorder(),
                  ),),
                SizedBox(height: 30),
                SizedBox(
                  height: 50,
                  width: 200,
                  child: ElevatedButton(onPressed: (){
                    String getnum1 = num1.text;
                    String getnum2 = num2.text;
                    double Result=double.parse(getnum1)/double.parse(getnum2);
                    setState(() {
                      output=Result.toString();
                    });
                  }, child: Text("Divide",style: TextStyle(fontSize: 20)),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlueAccent,
                        foregroundColor: Colors.black),
                  ),),
                SizedBox(height: 30),
                Text("Result: "+output,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold, color: Colors.red),),
                SizedBox(height: 30),
                SizedBox(
                  height:50,
                  width:200,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>homepage()));
                  }, child: Text("Return to Main Page"),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.greenAccent,
                        foregroundColor: Colors.black),
                  ),

                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
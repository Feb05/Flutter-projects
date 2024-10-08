import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Sign UP"),
        ),
        body: Container(
          child: Column(
            children: [
              TextField(decoration: InputDecoration(
                  hintText: "Name",
                  prefixIcon: Icon(Icons.account_box_rounded),
                  border: OutlineInputBorder()
              ),),
              SizedBox(height: 20,),
              TextField(decoration: InputDecoration(
                  hintText: "Email-ID",
                  prefixIcon: Icon(Icons.mail),
                  border: OutlineInputBorder()
              ),),
              SizedBox(height: 20,),
              TextField(decoration: InputDecoration(
                  hintText: "Username",
                  prefixIcon: Icon(Icons.account_box),
                  border: OutlineInputBorder()
              ),),
              SizedBox(height: 20,),
              TextField(decoration: InputDecoration(
                  hintText: "Password",
                  prefixIcon: Icon(Icons.password),
                  border: OutlineInputBorder()
              ),),
              SizedBox(height: 20,),
              TextField(decoration: InputDecoration(
                  hintText: "Confirm Password",
                  prefixIcon: Icon(Icons.password),
                  border: OutlineInputBorder()
              ),),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
              }, child: Text("SIGN UP"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    foregroundColor: Colors.black
                ),),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                Navigator.pop(context);},
                child: Text("Back to Login"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.greenAccent,
                    foregroundColor: Colors.black),),
            ],
          ),
        ),
      ),
    );
  }
}

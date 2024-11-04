import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});

  TextEditingController name=TextEditingController();
  TextEditingController mail=TextEditingController();
  TextEditingController username=TextEditingController();
  TextEditingController password=TextEditingController();
  TextEditingController cpassword=TextEditingController();

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
              TextField(
                controller: name,
                decoration: InputDecoration(
                  hintText: "Name",
                  prefixIcon: Icon(Icons.account_box_rounded),
                  border: OutlineInputBorder()
              ),),
              SizedBox(height: 20,),
              TextField(
                controller: mail,
                decoration: InputDecoration(
                  hintText: "Email-ID",
                  prefixIcon: Icon(Icons.mail),
                  border: OutlineInputBorder()
              ),),
              SizedBox(height: 20,),
              TextField(
                controller: username,
                decoration: InputDecoration(
                  hintText: "Username",
                  prefixIcon: Icon(Icons.account_box),
                  border: OutlineInputBorder()
              ),),
              SizedBox(height: 20,),
              TextField(
                controller: password,
                decoration: InputDecoration(
                  hintText: "Password",
                  prefixIcon: Icon(Icons.password),
                  border: OutlineInputBorder()
              ),),
              SizedBox(height: 20,),
              TextField(
                controller: cpassword,
                decoration: InputDecoration(
                  hintText: "Confirm Password",
                  prefixIcon: Icon(Icons.password),
                  border: OutlineInputBorder()
              ),),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                String getname = name.text;
                String getmail= mail.text;
                String getusername = username.text;
                String getpassword = password.text;
                String getcpassword = cpassword.text;
                if(getpassword!=getcpassword)
                  print("Passwords do not match");
                else{
                  print("Name: "+getname);
                  print("Mail-ID: "+getmail);
                  print("Username: "+getusername);
                  print("Password: "+getpassword);
                  print("Confirm Password: "+getcpassword);
                }
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

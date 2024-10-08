import 'package:demologin_app/Pages/SignUp_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        child: Column(

          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage("https://th.bing.com/th/id/OIP.Gfp0lwE6h7139625a-r3aAHaHa?rs=1&pid=ImgDetMain"),
            ),
            TextField(decoration: InputDecoration(
                hintText: "Username",
                prefixIcon: Icon(Icons.account_box_rounded),
                border: OutlineInputBorder()
            ),),
            SizedBox(height: 20,),
            TextField(decoration: InputDecoration(
                hintText: "Password",
                prefixIcon: Icon(Icons.password),
                border: OutlineInputBorder()
            ),),
            SizedBox(height: 20,),
            SizedBox(
              height: 50,
              width: 150,
              child: ElevatedButton(onPressed: (){
                print("Hello");
              },
                child: Text("LOGIN"),
                style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pinkAccent,
                    foregroundColor: Colors.black
                ),),
            ),
            SizedBox(height: 20,),
            SizedBox(
              height:50,
              width: 150,
              child: ElevatedButton(onPressed: (){
                print("Hola");
                Navigator.push(context, 
                MaterialPageRoute(builder: (context)=>SignupPage()));
              }, child: Text("SIGN UP"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellowAccent,
                foregroundColor: Colors.black),),
            ),
          ],
        ),
      ),
    );
  }
}

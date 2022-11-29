


import 'package:flutter/material.dart';
import 'package:test1/animated.dart';
import 'package:test1/listviewbuilder.dart';
import 'package:test1/login.dart';

import 'package:test1/next.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/formlogin',
    routes: {
      '/login':(context)=>Loginscreen(),
      '/animated':(context)=>Animated(),
      '/next':(context)=>Homepage(),
      '/testitem':(context)=>Testitem(),
      '/formlogin':(context)=>FormLogin(),
    },
home: Loginscreen(),
  ));
}
class Loginscreen extends StatefulWidget {
  const Loginscreen({Key? key}) : super(key: key);

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  final Usernamecontroller=TextEditingController();
  String name="";
  final Emailcontroller=TextEditingController();
  String Email="";
  final Passwordcontroller=TextEditingController();
  String password="";
  void allvalidation(){
    if(Usernamecontroller.text.isEmpty){
      name="Enter name please";
    }
    else{
      name="";
    }
    if (Emailcontroller.text.isEmpty){
      Email='Invalid Email';

    }
    else{
      Email='';
    }
    if (Passwordcontroller.text.length<=4){
      password="Atleast 5 character";
    }
    else{
      password="";
    }
    if(Usernamecontroller.text.isNotEmpty&&
        Passwordcontroller.text.isNotEmpty&&(
        Emailcontroller.text.contains('@gmail.com')||Emailcontroller.text.contains('@yahoo.com'))){
      Navigator.pushNamed(context, '/animated');
    }
    else{
      Email="Invalid Email";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Text(name,style: TextStyle(color: Colors.red),),
              Container(
                margin: EdgeInsets.only(top: 70),
                height: 100,
                width: 300,
                color: Colors.white,
                child: TextField(
                  controller: Usernamecontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Username',
                  ),
                ),
              ),
              Text(Email,style: TextStyle(color: Colors.red),),
              Container(
                margin: EdgeInsets.only(top: 30),
                height: 100,
                width: 300,
                color: Colors.white,
                child: TextField(
                  controller: Emailcontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Email',
                  ),
                ),
              ),
              Text(password,style: TextStyle(color: Colors.red),),
              Container(
                margin: EdgeInsets.only(top: 30),
                height: 100,
                width: 300,
                color: Colors.white,
                child: TextField(
                  obscureText: true,
                  controller: Passwordcontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Password',
                  ),
                ),
              ),
              ElevatedButton(onPressed: (){
                setState(() {
                  allvalidation();
                });
                }, child:Text('Send')),
            ],
          ),

        ],
      ),
    );
  }
}

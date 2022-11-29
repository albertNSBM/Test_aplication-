import 'package:flutter/material.dart';



class Testitem extends StatefulWidget {
  const Testitem({Key? key}) : super(key: key);

  @override
  State<Testitem> createState() => _TestitemState();
}

class _TestitemState extends State<Testitem> {
  final Usernamecontroller=TextEditingController();
  String username="";
  final Passwordcontroller=TextEditingController();
  String password="";
  final Emailcontroller=TextEditingController();
  String email="";
  void allvalidation(){
    if (Usernamecontroller.text.isEmpty){
      username='Enter Valid username';
    }
    else{
      username="";
    }
    if((Passwordcontroller.text.length)<=4){
      password="Atleast 5 character please";
    }
    else{
      password="";
    }
    if (Emailcontroller.text.isEmpty){
      email="Enter Valid email";
    }
    else{
      email="";
    }
    if (Usernamecontroller.text.isNotEmpty&&
        Emailcontroller.text.contains('@gmail.com'))
        {
      Navigator.pushNamed(context, '/next');
    }
    else{
      email=" Valid Email please";

    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Form validation',
        ),
      ),
      body: ListView(children: [
        Form(child:Column(
          children: [
            SizedBox(height: 50,),
            Container(
              height: 100,
              width: 250,
              child: TextFormField(
                controller: Usernamecontroller,
                decoration: InputDecoration(
                  hintText: 'Username',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Text(username,style: TextStyle(color: Colors.red),),
            SizedBox(height: 20,),
            Container(
              height: 100,
              width: 250,
              child: TextFormField(
                controller: Passwordcontroller,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Text(password,style: TextStyle(color: Colors.red),),
            SizedBox(height: 10,),
            Container(
              height: 100,
              width: 250,
              child: TextFormField(
                controller: Emailcontroller,
                decoration: InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Text(email,style: TextStyle(color: Colors.red),),
            SizedBox(height: 10,),
            TextButton(onPressed: (){
              setState(() {
                allvalidation();
              });
            },
                child: Text('Login'
                ,style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                  ),)),
          ],
        ),
        ),

      ],
      ),
    );
  }
}

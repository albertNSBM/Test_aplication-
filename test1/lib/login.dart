import 'package:flutter/material.dart';
class FormLogin extends StatefulWidget {
  const FormLogin({Key? key}) : super(key: key);

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  final _formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Form(
            key: _formkey,
            child: Column(
              children: [
                SizedBox(height: 20,),
                Container(
                  height: 70,
                  width: 300,
                  child:TextFormField(
                    validator: (username){
                      if (username==null||username.isEmpty){
                        return 'Please Enter username';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: 'username*',
                      border:OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 70,
                  width: 300,
                  child:TextFormField(
                    validator: (pass){
                      if(pass!.length<=4){
                        return 'Atleast 5 character';
                      }
                      return null;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password*',
                      border:OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 70,
                  width: 300,
                  child:TextFormField(
                    validator:(email){
                      if (email!.isEmpty ||!email.contains('@gmail.com')){
                        return 'Enter valid email please';

                      }

                    },
                    decoration: InputDecoration(
                      hintText: 'Email*',
                      border:OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                TextButton(onPressed: (){
                  if(_formkey.currentState!.validate()){
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content:Text('success')));

                  }

                },
                child:Text('Login',style: TextStyle(color: Colors.blue,
                fontWeight: FontWeight.bold,fontSize: 20.0),)),


              ],
            ),
          ),

        ],
      ),
    );
  }
}

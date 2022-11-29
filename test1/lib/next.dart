import 'package:flutter/material.dart';
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool lightbulbIson=false;
  String name="";
  final UsernameController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home page'),
      ),
      body: ListView(
        children: [
          Container(
            height: 400,
            width: 0,
            color: Colors.white,
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                TextField(
                  controller:UsernameController,
                  onChanged:(text){
                    setState((){
                      name=text;
                    });

                  },
                  decoration: InputDecoration(
                    hintText: 'Enter username',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: '${name}',

                  ),
                ),
                SizedBox(height: 10,),
                Icon(Icons.lightbulb_outline,
                color: lightbulbIson? Colors.amber:Colors.black),
                
                SizedBox(height: 100,),

                GestureDetector(
                  onTap: (){
                    setState((){
                      lightbulbIson=!lightbulbIson;
                    });

                  },
                  child: Container(
                    padding: EdgeInsets.all(20.0),
                    height: 50,
                    width: 100,
                    color: Colors.transparent,
                    child: Text(lightbulbIson? 'OF':'ON'),
                  ),
                ),
              ],
            ),
          ),
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
              color:Colors.grey,
              height: 70,
              width: 70,
              ),

              Container(
                color: Colors.blue,
                height: 50,
                width: 50,
              ),
            ],
          ),
        ],
      ),

    );
  }
}

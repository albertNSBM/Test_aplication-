import 'package:flutter/material.dart';
class Animated extends StatefulWidget {
  const Animated({Key? key}) : super(key: key);

  @override
  State<Animated> createState() => _AnimatedState();
}

class _AnimatedState extends State<Animated> {
  var list=['Albert','Bernard','Ines'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('inkwell Test'),
        leading: Icon(Icons.home),
        actions: [
          Icon(Icons.search),
        ],
      ),
      body:ListView.builder(
        itemCount: list.length,
          itemBuilder: (BuildContext context,int indes){
        return Card(
          child: Column(
            children: [
              ListTile(
                leading: InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, '/login');
                  },
                  child: CircleAvatar(
                    child: Text(list[indes][0]

                    ),
                  ),
                ),
                title: Text(list[indes]),
                trailing: Icon(Icons.menu_open),
              ),
            ],
          ),
        );
      })
    );
  }
}

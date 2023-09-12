import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
      title: 'ostad app',
    );
  }
}


class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle=ElevatedButton.styleFrom(
      minimumSize: Size(double.infinity, 60),
      );

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red, title: const Text('home'), ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        Padding(padding: EdgeInsets.all(10), child: TextField(decoration: InputDecoration(labelText: 'First Name', border: OutlineInputBorder()),),),
        Padding(padding: EdgeInsets.all(10), child: TextField(decoration: InputDecoration(labelText: 'First Name', border: OutlineInputBorder()),),),
        Padding(padding: EdgeInsets.all(10), child: TextField(decoration: InputDecoration(labelText: 'First Name', border: OutlineInputBorder()),),),
        Padding(padding: EdgeInsets.all(10), child: ElevatedButton(onPressed: () {
        },child: Text('Submit'), style: buttonStyle,),),
        ],
      )
    );
  }
}
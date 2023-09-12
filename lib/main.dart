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

  MySnackBar(message,context){
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }
  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle=ElevatedButton.styleFrom(
      padding: EdgeInsets.all(10), 
      backgroundColor: Colors.green,
      foregroundColor: Colors.red,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(40))),
      );
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red, title: const Text('home'), ),
      body: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(onPressed: (){MySnackBar('text my message', context);}, child: Text('Text Button')),
        ElevatedButton(onPressed: (){MySnackBar('elevated my message', context);}, child: Text('Elevated Button'),style: buttonStyle,),
        OutlinedButton(onPressed: (){MySnackBar('out my message', context);}, child: Text('Outline Button')),
      ],),
    );
  }
}
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
  MyAlertDialog(context){
    return showDialog(context: context, builder: (BuildContext context){
      return Expanded(child: AlertDialog(
        title: Text("Alert!"),
        content: Text("do you want to delete"),
        actions: [
        TextButton(onPressed: (){MySnackBar("Delete Successful", context);}, child: Text("yes")),
        TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("no")),],
      ),);
    });
  }
  
  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle=ElevatedButton.styleFrom(
      padding: EdgeInsets.all(10), 
      backgroundColor: Colors.pink,
      foregroundColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(40))),
      );
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red, title: const Text('home'), ),
      body: Center(child: ElevatedButton(child: Text("click me"), onPressed: () {
        MyAlertDialog(context);
      },),
        
      )
    );
  }
}
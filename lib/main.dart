import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: HomeScreen(),
      title: 'ostad app',
    );
  }
}


class HomeScreen extends StatelessWidget{
   HomeScreen({super.key});

  var MyItems=[
    {"img":"https://rabbil.com/files/mernX.png", "title":"1"},
    {"img":"https://rabbil.com/files/mernX.png", "title":"2"},
    {"img":"https://rabbil.com/files/mernX.png", "title":"3"},
    {"img":"https://rabbil.com/files/mernX.png", "title":"4"},
    {"img":"https://rabbil.com/files/mernX.png", "title":"5"},
    {"img":"https://rabbil.com/files/mernX.png", "title":"6"},
    {"img":"https://rabbil.com/files/mernX.png", "title":"7"},
    {"img":"https://rabbil.com/files/mernX.png", "title":"8"},
    {"img":"https://rabbil.com/files/mernX.png", "title":"9"},
  ];

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red, title: const Text('home'), ),
      body: ListView.builder(
        itemCount: MyItems.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 200,
              child: Image.network(MyItems[index]['img']!, fit: BoxFit.fill,)
            ),
          );
        },)
    );
  }
}
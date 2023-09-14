import 'package:flutter/material.dart';
import 'package:flutter_app/Fragment/AlarmFragment.dart';
import 'package:flutter_app/Fragment/BalanceFragment.dart';
import 'package:flutter_app/Fragment/ContactFragment.dart';
import 'package:flutter_app/Fragment/EmailFragment.dart';
import 'package:flutter_app/Fragment/HomeFragment.dart';
import 'package:flutter_app/Fragment/PersonFragment.dart';
import 'package:flutter_app/Fragment/SearchFragment.dart';
import 'package:flutter_app/Fragment/SettingsFragment.dart';

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

  @override
  Widget build(BuildContext context) {
    
    return DefaultTabController(length: 8, child: Scaffold(
      appBar: AppBar(title: Text('Tab'),
       bottom: TabBar(
        isScrollable: true,
        tabs: [
        Tab(icon: Icon(Icons.home), text: 'Home',),
        Tab(icon: Icon(Icons.search), text: 'Search',),
        Tab(icon: Icon(Icons.settings), text: 'settings',),
        Tab(icon: Icon(Icons.email), text: 'email',),
        Tab(icon: Icon(Icons.contact_mail), text: 'contact',),
        Tab(icon: Icon(Icons.person), text: 'person',),
        Tab(icon: Icon(Icons.access_alarm), text: 'alarm',),
        Tab(icon: Icon(Icons.account_balance), text: 'balance',),
      ], ),
      ),
      body: TabBarView(children: [
        HomeFragment(),
        SearchFragment(),
        SettingsFragment(),
        EmailFragment(),
        ContactFragment(),
        PersonFragment(),
        AlarmFragment(),
        BalanceFragment(),
      ]),
    ));
  }
}
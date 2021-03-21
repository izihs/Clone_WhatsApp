
import 'package:flutter/material.dart';
import 'package:whatsapp_clone_nih/call_page.dart';
import 'package:whatsapp_clone_nih/chat_page.dart';
import 'package:whatsapp_clone_nih/status_page.dart';
import 'package:whatsapp_clone_nih/template/theme.dart';
import 'package:whatsapp_clone_nih/profile_page.dart';

class HomePage extends StatefulWidget {
  final String title;
  HomePage({this.title});
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar : AppBar(
          actions: [
          IconButton (icon: Icon (Icons.search), onPressed: (){}),
          IconButton(icon: Icon (Icons.account_circle), onPressed: () {
            Navigator.push //push, untuk menaruh tumpukan page
                (context, MaterialPageRoute(builder: (context) {
              return ProfilePage();
            }));
          },),
        ],
        elevation: 0,
        title: Text(
          widget.title,
          style: titleHeader,
          
        ),
        bottom: TabBar(
          indicatorColor: Colors.transparent,
          tabs: [
            Tab(
              text:"CHATS"
              ), 
            Tab(
              text:"STATUS"
              ),
            Tab(
              text : "CALL"
              ),
              ],
           ),
          ),
          body: TabBarView(children: [
            ChatPages(),
            StatusPages(),
            CallPages(),
          ]),),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone_nih/home_page.dart';
import 'package:whatsapp_clone_nih/template/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: primaryGreen),
      home: HomePage(title: "WhatsApp"),
    );
  }
}
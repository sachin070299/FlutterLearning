// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, use_super_parameters

import 'package:firstapp/screens/home_page.dart';
import 'package:firstapp/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      themeMode: ThemeMode.system,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      routes:{
        "/":(context)=>LoginPage(),
       "/home":(context)=>HomePage(),
       "/login":(context)=>LoginPage(),
      }
      );
  }
}

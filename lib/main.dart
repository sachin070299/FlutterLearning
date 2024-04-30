// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, use_super_parameters

import 'package:firstapp/screens/home_page.dart';
import 'package:firstapp/screens/login_page.dart';
import 'package:firstapp/utils/routes.dart';
import 'package:firstapp/widgets/theme.dart';
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
      
      themeMode: ThemeMode.dark,
      theme: MyTheme.lighttheme(context),
      darkTheme: MyTheme.darktheme(context),
      debugShowCheckedModeBanner: false,
      routes:{
        "/":(context)=>HomePage(),
       MyRoutes.homeRoute:(context)=>HomePage(),
       MyRoutes.loginRoute:(context)=>LoginPage(),
      }
      );
  }
}

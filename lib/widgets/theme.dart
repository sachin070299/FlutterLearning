// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme{
  static ThemeData lighttheme(BuildContext context)=>ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.poppins().fontFamily,
        drawerTheme: DrawerThemeData(
           backgroundColor: Colors.blueAccent,
           
        ),
        
        listTileTheme: ListTileThemeData(
          iconColor:Colors.black,
          textColor: Colors.black
        ),
        
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 2.0,
          iconTheme: IconThemeData(
            color: Colors.blueAccent,
          ),
          titleTextStyle: TextStyle(
            color: Colors.blueAccent,
            fontSize: 20,
            fontWeight: FontWeight.bold
          )
        )
      );

      static ThemeData darktheme(BuildContext context)=>ThemeData(
        brightness: Brightness.dark
      );
      
      //color

      static Color cream = Color(0xfff5f5f5);
      static Color deppishblue = Color(0xff403b58);


}
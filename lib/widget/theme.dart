
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme{

static ThemeData lighTheme(BuildContext context) =>ThemeData(
  primarySwatch:Colors.deepOrange,
  cardColor: Colors.white,
   canvasColor: creamColor,
   buttonColor:Vx.green600,
   accentColor: darkYellowishColor, 
   hintColor:Colors.black54 ,
   // Vx.orange600
   
 fontFamily: GoogleFonts.acme().fontFamily,
  appBarTheme: AppBarTheme(
    color: Colors.white,
    elevation: 0.0,
    iconTheme: IconThemeData(color: Colors.black),
    textTheme: Theme.of(context).textTheme,
    
  )
);

static ThemeData darkTheme(BuildContext context) =>ThemeData(
  brightness: Brightness.dark,
   primarySwatch:Colors.deepOrange,
   cardColor: Colors.black,
   canvasColor: darkcreamColor,
   buttonColor:darkYellowishColor ,
   accentColor: Colors.white,
    hintColor:Colors.white ,
  
   
 fontFamily: GoogleFonts.acme().fontFamily,
  appBarTheme: AppBarTheme(
    color: Colors.white,
    elevation: 0.0,
    iconTheme: IconThemeData(color: Colors.white),
    textTheme: Theme.of(context).textTheme,
    
  )
   
);

//colors
 static Color creamColor = Color(0xfff5f5f5);
 static Color darkcreamColor = Vx.gray900;
  static Color darkBluishColor = Color(0xff403b58);
  static Color lightBluishColor = Vx.indigo400;


static Color darkYellowishColor = Color(0xFFFB8C00);


//font styles
// orbitron()  sigmarOne()   monoton()

}



 
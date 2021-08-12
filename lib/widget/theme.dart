
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme{

static ThemeData lighTheme(BuildContext context) =>ThemeData(
  primarySwatch:Colors.deepOrange,
   
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
);

//colors
 static Color creamColor = Color(0xfff5f5f5);
  static Color darkBluishColor = Color(0xff403b58);
static Color LightgreenishColor = Color(0xFF00C853);
static Color darkYellowishColor = Color(0xFFFB8C00);

}



 
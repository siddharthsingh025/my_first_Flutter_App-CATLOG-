import 'package:flutter/material.dart';
import 'package:my_app/pages/Login_Page.dart';

import 'pages/Homepage.dart';

void main(){
  runApp(MyApp());
}


  class MyApp extends StatelessWidget{
@override 
Widget build(BuildContext context){

  return MaterialApp(

themeMode:ThemeMode.light,
theme:ThemeData(primarySwatch:Colors.deepPurple),
darkTheme: ThemeData(
  brightness: Brightness.dark,
),

routes:{
"/":(context)=> LoginPage(),
"/home":(context)=> HomePage(),
"/login":(context)=> LoginPage(),

},
  );
}


  }

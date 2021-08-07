import 'package:flutter/material.dart';
import 'package:my_app/pages/Login_Page.dart';
import 'package:my_app/utilities/routes.dart';
import 'package:my_app/widget/theme.dart';



import 'pages/Homepage.dart';

void main(){
  runApp(MyApp());
}


  class MyApp extends StatelessWidget{
@override 
Widget build(BuildContext context){

  return MaterialApp(

themeMode:ThemeMode.light,
theme:MyTheme.lighTheme(context),
darkTheme: MyTheme.darkTheme(context),
debugShowCheckedModeBanner: false,
 initialRoute: MyRoutes.homeRoutes,
routes:{
"/":(context)=> LoginPage(),
MyRoutes.homeRoutes:(context)=> HomePage(),
MyRoutes.loginRoutes:(context)=> LoginPage(),

},
  );
}


  }

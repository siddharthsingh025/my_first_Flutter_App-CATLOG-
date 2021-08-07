

import'package:flutter/material.dart';
import 'package:my_app/wedgit/drawer.dart';


class HomePage extends StatelessWidget{
  final int day=20;
  final String name="Siddharth";

@override
Widget build(BuildContext context){
  return Scaffold(
appBar: AppBar( 
  title: Text("Catlog App"),
  

),
body: Center(
  
  child: Container(

    child: Text("Welcome to $day th birthday of $name"),
),
),
drawer: MyDrawer(),
  );


}


}


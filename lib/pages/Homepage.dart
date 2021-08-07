

import'package:flutter/material.dart';
import 'package:my_app/Models/catlog.dart';
import 'package:my_app/widget/drawer.dart';
import 'package:my_app/widget/item_wedgit.dart';



class HomePage extends StatelessWidget{
  final int day=20;
  final String name="Siddharth";


@override
Widget build(BuildContext context){
  final dumylist = List.generate(15, (index) => CatalogModel.Items[0]);
  return Scaffold(
appBar: AppBar( 
  title: Text("Catlog App"),
  

),
body: Padding(
  padding: const EdgeInsets.all(17.0),
  child:   ListView.builder(
    itemCount:dumylist.length ,
    itemBuilder: (context, index){
      return ItemWidget(
        item: dumylist[index],
      );
    },),
),
drawer: MyDrawer(),
  );


}


}




import 'dart:convert';

import'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/Models/catlog.dart';
import 'package:my_app/widget/drawer.dart';
import 'package:my_app/widget/item_wedgit.dart';



class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int day=20;

  final String name="Siddharth";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData()
   async {
    final catalogjson =  await  rootBundle.loadString("Assets/files/Catalog.json");
      final decodeData = jsonDecode(catalogjson);
       var productsData = decodeData["products"];
    CatalogModel.items = List.from(productsData)
    .map<Item>((item) => Item.fromMap(item))
    .toList();
    setState(() { });
  }

@override

Widget build(BuildContext context){
  // final dumylist = List.generate(15, (index) => CatalogModel.items[0]);
  return Scaffold(
appBar: AppBar( 
  title: Text("Catlog App"),
  

),
body: Padding(
  padding: const EdgeInsets.all(17.0),
  child:   ListView.builder(
    itemCount:CatalogModel.items.length ,
    itemBuilder: (context, index){
      return ItemWidget(
        item: CatalogModel.items[index],
      );
    },),
),
drawer: MyDrawer(),
  );


}
}


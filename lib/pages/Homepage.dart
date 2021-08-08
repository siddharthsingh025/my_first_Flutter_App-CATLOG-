

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
    //  await Future.delayed(Duration(seconds: 2));
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
  child: (CatalogModel.items!=null && CatalogModel.items.isNotEmpty) 
  ? GridView.builder(
    gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      ) ,
    
    itemBuilder: (context, index){
      final item =CatalogModel.items[index];
      return Card(
        clipBehavior: Clip.antiAlias,
        shape:  RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(11)),
        child: GridTile(
          header: Container(

            child: Text(item.name,style: TextStyle(color: Colors.white),),
            padding:  const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.deepOrange
            ),),
          child: Image.network(item.image),
          footer: Container(
            child: Text(item.price.toString(),
            style: TextStyle(color: Colors.white),),
             padding:  const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.black

           ), ),
          
          )
          );
    }, 
    
    itemCount:CatalogModel.items.length ,
    )
:Center(
  child: CircularProgressIndicator(),)
),
drawer: MyDrawer(),
  );


}
}


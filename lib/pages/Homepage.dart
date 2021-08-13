

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:my_app/utilities/routes.dart';
import 'package:my_app/widget/Homepage_widgets/Catalog_List.dart';
import 'package:my_app/widget/Homepage_widgets/Catalog_header.dart';

import 'package:velocity_x/velocity_x.dart';
import'package:flutter/material.dart';

import 'package:my_app/Models/catlog.dart';

import 'package:my_app/widget/theme.dart';



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
    //  await Future.delayed(Duration(seconds: 8));
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
  
  return Scaffold(
backgroundColor: context.canvasColor,
floatingActionButton: FloatingActionButton(
  backgroundColor: context.theme.buttonColor,
  onPressed: () => Navigator.pushNamed(context, MyRoutes.cartRoute),
  child: Icon(CupertinoIcons.cart,color: Colors.white,) ,),
body: 
SafeArea(
  child:   Container(
   
    padding: Vx.m32,
    child:   Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       CatalogHeader(),
       if(CatalogModel.items!=null && CatalogModel.items.isNotEmpty)
      CatalogList().py16().expand()
      else
      Center(child: CircularProgressIndicator(),)

      ],),
  ),
)
  );
}
}














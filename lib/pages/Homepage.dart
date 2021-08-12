

import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import'package:flutter/material.dart';

import 'package:my_app/Models/catlog.dart';
import 'package:my_app/widget/drawer.dart';
import 'package:my_app/widget/item_wedgit.dart';
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
  
  return Scaffold(
  
backgroundColor: MyTheme.creamColor,
body: 
SafeArea(
  child:   Container(
    padding: Vx.m32,
    child:   Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       CatalogHeader(),
       if(CatalogModel.items!=null && CatalogModel.items.isNotEmpty)
      CatalogList().expand()
      else
      Center(child: CircularProgressIndicator(),)

      ],),
  ),
)
  );
}
}



class CatalogHeader extends StatelessWidget{
  @override
  Widget build(BuildContext context){
  return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "CataLog App".text.xl5.bold.color(MyTheme.darkYellowishColor).make(),
        "In Demand Products".text.xl2.make(),
      ],);

}
}



class CatalogList extends StatelessWidget{
  @override
  Widget build(BuildContext context){
  return ListView.builder(
    shrinkWrap: true,
    itemCount: CatalogModel.items.length,
    itemBuilder: (context , index){
      final catalog = CatalogModel.items[index];
      return CatalogItem(catalog : catalog);
    },
  );
  }
}


class CatalogItem extends StatelessWidget {
  final Item catalog;
  const CatalogItem({Key? key,required this.catalog,}) 
  : assert (catalog!=null) ,
  super(key: key);
  @override
  Widget build(BuildContext context){
  return  VxBox(
child: Row(
  children: [
    CatalogImage(image: catalog.image,),
    Expanded(child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment:MainAxisAlignment.center,
      children: [
        
        catalog.name.text.bold.color(MyTheme.darkYellowishColor).xl2.make(),
        catalog.desc.text.make(),
       10.heightBox,
        ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          
          children: [
            
            "\$${catalog.price}".text.xl.bold.make(),
            ElevatedButton(onPressed: () {},
            
            style: ButtonStyle(
              shape: MaterialStateProperty.all(StadiumBorder()
              )), 
            
            child:
            "Buy".text.make(), 
            )
            
          ],
        ),
      ],
      
    ),)
  ]
  
),

  ).white.rounded.square(150).make().py16();
}
}   


class CatalogImage extends StatelessWidget {
  final String image;
  const CatalogImage({
    Key? key,
    required this.image,
  }) : super(key: key);
  @override
  Widget build(BuildContext context){
  return  Image.network(
      image,
      ).box.p8.rounded.color(MyTheme.creamColor).make().p16().w40(context);
    }
  
}

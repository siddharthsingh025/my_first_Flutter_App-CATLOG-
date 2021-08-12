import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/widget/theme.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:my_app/Models/catlog.dart';

class HomeDetailPage extends StatelessWidget {

final  Item catalog;
  const HomeDetailPage({
    Key? key,
    required this.catalog,
  }) : super(key: key);
  @override
  Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(),
    backgroundColor: MyTheme.creamColor,
    bottomNavigationBar: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          
          children: [
            
            "\$${catalog.price}".text.xl4.bold.color(MyTheme.darkBluishColor).make(),
            ElevatedButton(onPressed: () {},
            
            style: ButtonStyle(
              shape: MaterialStateProperty.all(StadiumBorder()
              )), 
            
            child:
            "Buy".text.xl.make(), 
            ).wh(100, 50),
            
          ],
        ).p32(),
    body: SafeArea(
      bottom: false,
      child: Column(
        children: [
          Hero(
            tag: Key(catalog.id.toString()),
            child:
             Image.network(catalog.image)).h32(context),

             Expanded(child: 
             VxArc(
               height: 30.0, 
               arcType: VxArcType.CONVEY,
               edge: VxEdge.TOP,
             child: Container(
               color: Colors.white,
               width:context.screenWidth ,
               child: Column(
                 children: [
                    catalog.name.text.bold.color(MyTheme.darkYellowishColor).xl4.make(),
        catalog.desc.text.lg.make(),
       10.heightBox,
                 ],
               ).p64(),
             )))
        ],
      ),
    ),
  );
  }
}

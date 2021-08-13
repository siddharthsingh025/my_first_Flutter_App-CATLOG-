



import 'package:flutter/material.dart';
import 'package:my_app/Models/cart.dart';
import 'package:my_app/Models/catlog.dart';
import 'package:my_app/pages/Home_detail.page.dart';

import 'package:my_app/widget/theme.dart';
import 'package:velocity_x/velocity_x.dart';

import 'Catalog_Image.dart';


class CatalogList extends StatelessWidget{
  @override
  Widget build(BuildContext context){
  return ListView.builder(
    shrinkWrap: true,
    itemCount: CatalogModel.items.length,
    itemBuilder: (context , index){
      final catalog = CatalogModel.items[index];
      return InkWell(
        onTap: () => Navigator.push(context, MaterialPageRoute(
          builder: (context) => HomeDetailPage(
            catalog: catalog),),),

        child: CatalogItem(catalog : catalog));
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
    Hero(
      tag: Key(catalog.id.toString()),
      child: CatalogImage(
      image: catalog.image,
      ),
      ),
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
            _AddToCart(catalog : catalog)
            
          ],
        ),
      ],
      
    ),)
  ]
  
),

  ).color(context.cardColor).rounded.square(150).make().py16();
}
}





class _AddToCart extends StatefulWidget {
   final Item catalog;
  const _AddToCart({
    Key? key, required this.catalog,
  }) : super(key: key);

  @override
  __AddToCartState createState() => __AddToCartState();
}

class __AddToCartState extends State<_AddToCart> {
   bool isAdded =false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {
     isAdded = isAdded.toggle();
    final _catalog =CatalogModel();
    final _cart =CartModel();
    _cart.catalog = _catalog;
    _cart.add(widget.catalog);
     setState(() {});
    },
    
    style: ButtonStyle(
      
      shape: MaterialStateProperty.all(StadiumBorder()
      ),
      // backgroundColor: MaterialStateProperty.all()
      ), 
    
    child:

     isAdded ?Icon(Icons.done):"Add To Cart".text.make(), 
    );
  }
}   
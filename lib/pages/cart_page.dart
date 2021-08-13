import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/Models/cart.dart';
import 'package:my_app/widget/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
  return Scaffold(
    backgroundColor: context.canvasColor,
    appBar: AppBar( backgroundColor: Colors.transparent,
   title : "Cart".text.bold.color(context.theme.hintColor).xl4.textStyle(GoogleFonts.orbitron()).make(),),

body: Column(
  children: [
    _CartList().p32().expand(),
    Divider(),
    _CartTotal(),
  ],
),
  );

}
}




 

class _CartTotal extends StatelessWidget{
  final _cart =CartModel();
  @override
  Widget build(BuildContext context){
  return SizedBox(
    height: 200,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        "\$${_cart.totalPrice}".text.xl5.bold.make(),
        30.widthBox,
        ElevatedButton(
          onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: "Buying Not Supported Yet".text.red500.textStyle(GoogleFonts.teko()).xl3.make() ,
              ));
          },
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all(context.theme.buttonColor),
          shape: MaterialStateProperty.all(StadiumBorder())),
          child: "Buy".text.make(),
          ).w32(context),
      ],
    
    ),

  );

}
}



class _CartList extends StatefulWidget{
  @override
  __CartListState createState() => __CartListState();
}

class __CartListState extends State<_CartList> {
  final _cart =CartModel();
  @override
  Widget build(BuildContext context){
  return ListView.builder(
    itemCount:_cart.items.length ,
    itemBuilder: (context,index)=>
    ListTile(
      leading: Icon(Icons.done),
      trailing: IconButton(
        icon: Icon(Icons.remove_circle_outline),
        onPressed: (){},
        ),
        title: _cart.items[index].name.text.make(),
      
    )
    );

}
}
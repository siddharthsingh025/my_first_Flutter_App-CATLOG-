import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/widget/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
  return Scaffold(
    backgroundColor: context.canvasColor,
    appBar: AppBar( backgroundColor: Colors.transparent,
   title : "Cart".text.bold.color(context.theme.hintColor).xl4.textStyle(GoogleFonts.orbitron()).make(),),

  );

}
}


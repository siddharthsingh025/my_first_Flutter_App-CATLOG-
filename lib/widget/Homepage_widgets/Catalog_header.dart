



import 'package:flutter/material.dart';
import 'package:my_app/widget/theme.dart';
import 'package:velocity_x/velocity_x.dart';
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
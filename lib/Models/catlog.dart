
class  Item {

  final int id;
  final String name;
  final String desc;
  final num price;
  final String colour;
  final String image;

  Item({ required this.id, required this.name, required this.desc, required this.price, required this.colour, required this.image});
}



class CatalogModel{

  static final Items =[
Item(
id: 1,
name: "iPhone 12 pro",
desc: "Apple iPhone 12th generation",
price: 999,
colour: "#33505a",
image:"https://m.media-amazon.com/images/I/71MHTD3uL4L._SL1500_.jpg",

)

  ];
}








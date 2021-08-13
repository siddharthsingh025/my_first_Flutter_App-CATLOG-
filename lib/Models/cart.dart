import 'package:my_app/Models/catlog.dart';

class CartModel{

//singletone class
static final cartModel = CartModel.internal();

CartModel.internal();

factory CartModel() => cartModel;





//Catalog field
late CatalogModel _catalog;

//Collection of IDs -store ids of each item
final List<int> _itemIds =[];

//Getiing Catalog
CatalogModel get catalog =>_catalog;

set catalog(CatalogModel newCatalog){
  assert (newCatalog!=null);
  _catalog =newCatalog;
  
}
  //get items in the cart
  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

//Get total Price
num get totalPrice => items.fold(0, (total, current) => total + current.price);

//Add items
void  add(Item item)
{
  _itemIds.add(item.id);
}

//Remove items

void remove(Item item )
{
  _itemIds.remove(item.id);
}
}
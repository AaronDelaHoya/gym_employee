import 'package:flutter/cupertino.dart';

class cardShop extends StatefulWidget{

  final String name;
  final String description;
  int price;
  final Image image;

  cardShop({this.name, this.description, this.price, this.image});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _cardShop();
  }


}
class _cardShop extends State<cardShop>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }

}
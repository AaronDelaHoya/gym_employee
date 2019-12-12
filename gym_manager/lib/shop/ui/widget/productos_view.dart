import 'package:flutter/material.dart';

class ProductoView extends StatelessWidget {

  final String productName;
  final String productDescrip;
  final String productPrice;
  final String image;

  ProductoView(
      {this.productName, this.productDescrip, this.image, this.productPrice});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 150.0,
      width: 300.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
            color: Colors.white,
          boxShadow: [BoxShadow(
              color: Colors.grey,
              offset: Offset(0.1,0.0)
          )]
      ),
      margin: EdgeInsets.all(10.0),
      child: Stack(
        children: <Widget>[

          Container(
            padding: EdgeInsets.all(10.0),
            child: InkWell(
              onTap: (){
                showDialog(
                  context: context,
                  builder: (BuildContext context){
                    return AlertDialog(
                      title: Text(productName),
                      content: Text(productDescrip),
                    );
                  }
                );
              },
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                    ),
                    child:Image(
                      image: AssetImage(image),
                    ) ,
                  ),
                  Column(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            productName,
                            style: TextStyle(fontSize: 15.0),
                          ),
                          Text(
                            productDescrip,
                            style: TextStyle(fontSize: 10.0),
                          )
                        ],
                      ),
                      Image(
                        alignment: Alignment(-1,1),
                        image: AssetImage("assets/img/dollar-symbol.png"),
                        height: 25.0,
                        width: 25.0,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            width: 45.0,
            height: 45.0,
            margin: EdgeInsets.only(left: 255.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15.0),
                  topLeft: Radius.circular(2.5),
                  bottomLeft: Radius.circular(2.5),
                  bottomRight:Radius.circular(2.5)),
              color: Colors.cyan
            ),
            child: IconButton(
              icon: Icon(
                Icons.add,
                color: Colors.white,
              ),
              padding: EdgeInsets.all(0.0),
              autofocus: true,
              iconSize: 45.0,
              onPressed: (){

              },
            ),
          ),
        ],
      )
    );
  }
}

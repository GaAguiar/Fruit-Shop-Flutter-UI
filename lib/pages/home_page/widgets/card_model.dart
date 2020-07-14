import 'package:flutter/material.dart';
import 'package:fruit_shop_app/models/Fruit.dart';
import 'package:fruit_shop_app/pages/detail_page/detail_page.dart';

class CardModel extends StatefulWidget {
  final int index;
  CardModel({Key key, @required this.index}) : super(key: key);
  @override
  _CardModelState createState() => _CardModelState();
}

class _CardModelState extends State<CardModel> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(40),
      child: Ink(
        height: 100,
        decoration: BoxDecoration(
          color: fruits[widget.index].color,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    fruits[widget.index].title,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18.0,
                        color: Colors.white),
                  ),
                  SizedBox(height: 7),
                  Flexible(
                    child: RichText(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      text: TextSpan(
                        text: fruits[widget.index].shortDescription,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 7),
                  Text(
                    fruits[widget.index].price,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Hero(
                    tag: '${widget.index}',
                    child: Center(child: fruits[widget.index].images[0]),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    if (!fruits[widget.index].checkedToCart) {
                      fruits[widget.index].checkedToCart = true;
                    } else {
                      fruits[widget.index].checkedToCart = false;
                    }
                  });
                },
                child: Container(
                  height: 70,
                  width: 70,
                  child: Center(
                    child: fruits[widget.index].checkedToCart
                        ? Icon(Icons.check, color: Colors.white)
                        : Icon(Icons.add),
                  ),
                  decoration: BoxDecoration(
                    color: fruits[widget.index].checkedToCart
                        ? fruits[widget.index].selected
                        : Colors.white60,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      bottomLeft: Radius.circular(40),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(fruit: fruits[widget.index]),
          ),
        );
      },
    );
  }
}

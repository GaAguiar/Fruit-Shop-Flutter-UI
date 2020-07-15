import 'package:flutter/material.dart';
import 'package:fruit_shop_app/models/Fruit.dart';

import 'add_to_cart.dart';
import 'title_description.dart';

class DetailContainer extends StatelessWidget {
  final Fruit fruit;
  DetailContainer({Key key, @required this.fruit}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 50),
          child: Column(
            children: [
              TitleDescription(
                title: fruit.title,
                description: fruit.description,
              ),
              SizedBox(height: 40),
              AddToCart(
                color: fruit.selected,
                price: fruit.price,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fruit_shop_app/models/Fruit.dart';

import 'carousel_slider_image.dart';
import 'detail_container.dart';

class Body extends StatelessWidget {
  final Fruit fruit;
  Body({Key key, @required this.fruit}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CarouselSliderImage(
            index: fruit.id,
            listImage: fruit.images,
          ),
          DetailContainer(
            fruit: fruit,
          ),
        ],
      ),
    );
  }
}

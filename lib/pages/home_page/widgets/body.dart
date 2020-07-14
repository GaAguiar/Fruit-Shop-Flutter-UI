import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:fruit_shop_app/models/Fruit.dart';

import 'card_model.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      itemCount: fruits.length,
      crossAxisCount: 4,
      padding: EdgeInsets.all(20),
      itemBuilder: (context, index) => CardModel(index: index),
      staggeredTileBuilder: (index) =>
          StaggeredTile.count(2, index.isEven ? 3.5 : 3.2),
      mainAxisSpacing: 15.0,
      crossAxisSpacing: 15.0,
    );
  }
}

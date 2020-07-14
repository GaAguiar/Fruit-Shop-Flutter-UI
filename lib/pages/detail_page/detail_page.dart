import 'package:flutter/material.dart';
import 'package:fruit_shop_app/models/Fruit.dart';

class DetailPage extends StatelessWidget {
  final Fruit fruit;
  DetailPage({Key key, @required this.fruit}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      backgroundColor: fruit.color,
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: fruit.color,
      elevation: 0,
    );
  }
}

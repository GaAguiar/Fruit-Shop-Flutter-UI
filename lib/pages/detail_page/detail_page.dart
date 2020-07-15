import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_shop_app/models/Fruit.dart';
import 'package:fruit_shop_app/pages/detail_page/widgets/body.dart';

class DetailPage extends StatelessWidget {
  final Fruit fruit;
  DetailPage({Key key, @required this.fruit}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      backgroundColor: fruit.color,
      body: Body(
        fruit: fruit,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: fruit.color,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          color: Colors.white,
          height: 20,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}

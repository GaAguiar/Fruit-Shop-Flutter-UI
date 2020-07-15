import 'package:flutter/material.dart';

class TitleDescription extends StatelessWidget {
  final String title, description;
  TitleDescription({Key key, @required this.description, this.title})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 20),
        Text(
          description,
          style: TextStyle(height: 1.5),
        )
      ],
    );
  }
}

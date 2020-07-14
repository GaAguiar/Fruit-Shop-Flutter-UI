import 'package:flutter/material.dart';

class Fruit {
  final int id;
  final String title, description, price, shortDescription;
  final Color color, selected;
  final List<Image> images;
  bool checkedToCart;

  Fruit({
    this.title,
    this.description,
    this.color,
    this.images,
    this.id,
    this.selected,
    this.checkedToCart,
    this.price,
    this.shortDescription,
  });
}

List<Fruit> fruits = [
  Fruit(
    id: 0,
    title: 'Grape',
    description: textDescrition,
    color: Colors.deepPurple[300],
    images: [
      Image.asset('assets/img/grape.png', height: 80),
      Image.asset('assets/img/grape.png'),
      Image.asset('assets/img/grape.png'),
    ],
    checkedToCart: true,
    price: '\$1.4',
    selected: Colors.deepPurple[600],
    shortDescription: textShortDescription,
  ),
  Fruit(
    id: 1,
    title: 'Lime',
    price: '\$2.3',
    description: textDescrition,
    color: Colors.green[300],
    images: [
      Image.asset('assets/img/lime.png', height: 80),
      Image.asset('assets/img/lime.png'),
      Image.asset('assets/img/lime.png'),
    ],
    checkedToCart: false,
    selected: Colors.green[600],
    shortDescription: textShortDescription,
  ),
  Fruit(
    id: 2,
    title: 'Orange',
    description: textDescrition,
    price: '\$1.5',
    color: Colors.deepOrange[300],
    images: [
      Image.asset('assets/img/orange.png', height: 80),
      Image.asset('assets/img/orange.png'),
      Image.asset('assets/img/orange.png'),
    ],
    checkedToCart: true,
    selected: Colors.deepOrange[600],
    shortDescription: textShortDescription,
  ),
  Fruit(
    id: 3,
    title: 'Papaya',
    description: textDescrition,
    color: Colors.red[200],
    selected: Colors.red[500],
    price: '\$3.1',
    images: [
      Image.asset('assets/img/papaya.png', height: 80),
      Image.asset('assets/img/papaya.png'),
      Image.asset('assets/img/papaya.png'),
    ],
    checkedToCart: true,
    shortDescription: textShortDescription,
  ),
  Fruit(
    id: 4,
    title: 'Plum',
    description: textDescrition,
    price: '\$1.2',
    color: Colors.indigo[300],
    selected: Colors.indigo[600],
    images: [
      Image.asset('assets/img/plum.png', height: 80),
      Image.asset('assets/img/plum.png'),
      Image.asset('assets/img/plum.png'),
    ],
    checkedToCart: false,
    shortDescription: textShortDescription,
  ),
  Fruit(
    id: 5,
    title: 'Strawberry',
    description: textDescrition,
    color: Colors.red[300],
    selected: Colors.red[600],
    price: '\$2.6',
    images: [
      Image.asset('assets/img/strawberry.png', height: 80),
      Image.asset('assets/img/strawberry.png'),
      Image.asset('assets/img/strawberry.png'),
    ],
    checkedToCart: false,
    shortDescription: textShortDescription,
  ),
];

String textShortDescription =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry";
String textDescrition =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";

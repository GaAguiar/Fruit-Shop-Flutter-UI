import 'package:flutter/material.dart';

class AddToCart extends StatefulWidget {
  final Color color;
  final String price;
  AddToCart({Key key, @required this.color, @required this.price})
      : super(key: key);
  @override
  _AddToCartState createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  int numItem = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                buildOutlineBButton(
                  icon: Icons.remove,
                  buttonPress: () {
                    if (numItem > 1) {
                      setState(() {
                        numItem--;
                      });
                    }
                  },
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 7),
                  child: Text(
                    numItem.toString().padLeft(2, "0"),
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                buildOutlineBButton(
                  icon: Icons.add,
                  buttonPress: () {
                    setState(() {
                      numItem++;
                    });
                  },
                ),
              ],
            ),
            Text(
              widget.price,
              style: TextStyle(fontSize: 25),
            ),
          ],
        ),
        SizedBox(height: 60),
        SizedBox(
          height: 60,
          width: double.infinity,
          child: FlatButton(
            color: widget.color,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            onPressed: () {},
            child: Text(
              'Add to Cart',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }

  SizedBox buildOutlineBButton({IconData icon, Function buttonPress}) {
    return SizedBox(
      width: 40,
      height: 40,
      child: OutlineButton(
        highlightedBorderColor: Colors.transparent,
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        onPressed: buttonPress,
        child: Icon(icon),
      ),
    );
  }
}

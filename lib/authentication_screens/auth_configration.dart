import 'package:flutter/material.dart';

class authButton extends StatelessWidget {
  const authButton({
    Key key,
    this.text,
    this.press,
    this.width,
    this.color,

  }) : super(key: key);
  final String text;
  final Function press;
  final double width;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 45,
      // height: getProportionateScreenHeight(60),
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        color: color,
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
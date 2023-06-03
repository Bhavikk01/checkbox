import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final Radius? topLeft;
  final Radius? topRight;
  final Radius? bottomLeft;
  final Radius? bottomRight;
  const CircularButton(
      {this.topLeft,
      this.topRight,
      this.bottomLeft,
      this.bottomRight,
      required this.text,
      required this.height,
      required this.width,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.amber,
        elevation: 0.0,
        padding: EdgeInsets.symmetric(vertical: 4, horizontal: 6),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: topLeft ?? Radius.zero,
            topRight: topRight ?? Radius.zero,
            bottomLeft: bottomLeft ?? Radius.zero,
            bottomRight: bottomRight ?? Radius.zero,
          ),
        ),
      ),
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 30),
        width: width,
        height: height,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

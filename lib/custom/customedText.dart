import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomedText extends StatelessWidget {
  double? size;
  FontWeight? weight;
  Color? color;
  String text;

  CustomedText(
      {Key? key, required this.text, this.color, this.size, this.weight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      style: TextStyle(
          color: this.color == null ? Colors.black : this.color,
          fontSize: this.size == null ? 16 : this.size,
          fontWeight: this.weight == null ? FontWeight.normal : weight),
    );
  }
}

import 'package:flutter/material.dart';

import '../constants.dart';
import '../size.dart';

List<Widget> build_end() {
  List<Widget> end = [
    TextButton(
        onPressed: () {},
        child: Text(
          '호스트 되기',
          style: TextAppBarTextStyle,
        )),
    SizedBox(
      width: Small_margin,
    ),
    IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.language_outlined,
          color: Colors.white,
        )),
    SizedBox(
      width: Small_margin,
    ),
    Container(
      width: 90,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Stack(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(3, 5, 0, 3),
                child: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 5, 2, 3),
                  child: IconButton(
                      onPressed: () {}, icon: Icon(Icons.mood_outlined)))
            ],
          )
        ],
      ),
    ),
  ];
  return end;
}

import 'package:airbnb_ui/search.dart/forth_grid.dart';
import 'package:airbnb_ui/search.dart/second_grid.dart';
import 'package:airbnb_ui/search.dart/third_grid.dart';
import 'package:flutter/material.dart';

import 'first_grid.dart';

// ignore: must_be_immutable
class RoomSearch extends StatelessWidget {
  const RoomSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 700,
      height: 70,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(width: 2, color: Color(0xffdcd3d3))),
      child: Row(
        children: [
          FirstGrid(),
          Container(height: 35, width: 2, color: Colors.grey),
          SecondGrid(),
          Container(height: 35, width: 2, color: Colors.grey),
          ThirdGrid(),
          Container(height: 35, width: 2, color: Colors.grey),
          ForthGrid()
        ],
      ),
    );
  }
}

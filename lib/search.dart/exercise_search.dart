import 'package:airbnb_ui/search.dart/date_grid.dart';

import 'package:flutter/material.dart';

import 'location_grid.dart';

// ignore: must_be_immutable
class ExerciseSearch extends StatelessWidget {
  const ExerciseSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 700,
      height: 70,
      decoration: BoxDecoration(
          border: Border.all(width: 2, color: Color(0xffdcd3d3)),
          color: Colors.white,
          borderRadius: BorderRadius.circular(50)),
      child: Row(
        children: [
          LocationGrid(),
          Container(height: 35, width: 2, color: Colors.grey),
          DateGrid(),
        ],
      ),
    );
  }
}

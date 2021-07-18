import 'package:flutter/material.dart';

import '../constants.dart';
import '../size.dart';

// ignore: non_constant_identifier_names
List<Widget> build_center(BuildContext context) {
  List<Widget> center = <Widget>[
    SizedBox(
      width: MediaQuery.of(context).size.width / 10,
    ),
    TextButton(
        onPressed: () {},
        child: Text(
          '숙소',
          style: TextAppBarTextStyle,
        )),
    SizedBox(
      width: 0,
    ),
    TextButton(onPressed: () {}, child: Text('체험', style: TextAppBarTextStyle)),
    SizedBox(
      width: 10,
    ),
    TextButton(
        onPressed: () {}, child: Text('온라인 체험', style: TextAppBarTextStyle)),
  ];
  return center;
}

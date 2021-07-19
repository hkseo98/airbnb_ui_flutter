import 'package:flutter/material.dart';

import '../constants.dart';
import '../size.dart';

// ignore: non_constant_identifier_names
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
    PopupMenuButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
      offset: const Offset(0, 60),
      itemBuilder: (context) {
        var list = <PopupMenuEntry<Object>>[];
        list.add(
          PopupMenuItem(
            child: Container(
              width: 200,
              height: 30,
              child: Text('회원가입'),
            ),
          ),
        );
        list.add(
          PopupMenuItem(
            child: Container(
              width: 200,
              height: 30,
              child: Text('로그인'),
            ),
          ),
        );
        list.add(
          PopupMenuDivider(
            height: 2,
          ),
        );
        list.add(
          PopupMenuItem(
            child: Container(
              width: 200,
              height: 30,
              child: Text('숙소 호스트 되기'),
            ),
          ),
        );
        list.add(
          PopupMenuItem(
            child: Container(
              width: 200,
              height: 30,
              child: Text('체험 호스팅하기'),
            ),
          ),
        );
        list.add(
          PopupMenuItem(
            child: Container(
              width: 200,
              height: 30,
              child: Text('도움말'),
            ),
          ),
        );
        return list;
      },
      child: Container(
        width: 90,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 8, 8, 8),
              child: Icon(Icons.menu),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.mood_outlined,
                size: 30,
              ),
            )
          ],
        ),
      ),
    ),
  ];
  return end;
}

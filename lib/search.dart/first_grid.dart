import 'package:airbnb_ui/controller/search_bar_controller.dart';
import 'package:airbnb_ui/custom/customedText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class FirstGrid extends StatelessWidget {
  FirstGrid({Key? key}) : super(key: key);
  SearchBarController controller = Get.put(SearchBarController());

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onHover: (value) {
          controller.isFirstGridHovering.value = value;
        },
        onTap: () {},
        child: Obx(() => PopupMenuButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0))),
              offset: const Offset(0, 80),
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
                return list;
              },
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(25, 10, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomedText(
                        text: '위치',
                        weight: FontWeight.bold,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text('어디로 여행가세요?')
                    ],
                  ),
                ),
                width: 160,
                height: 70,
                decoration: BoxDecoration(
                    color: controller.isFirstGridHovering.value
                        ? Color(0xffe7e6e6)
                        : Colors.white,
                    borderRadius: BorderRadius.circular(50)),
              ),
            )));
  }
}

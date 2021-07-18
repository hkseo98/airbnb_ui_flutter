import 'package:airbnb_ui/controller/search_bar_controller.dart';
import 'package:airbnb_ui/custom/customedText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class SecondGrid extends StatelessWidget {
  SecondGrid({Key? key}) : super(key: key);
  SearchBarController controller = Get.put(SearchBarController());

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onHover: (value) {
          controller.isSecondGridHovering.value = value;
        },
        onTap: () {},
        child: Obx(() => Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25, 10, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomedText(
                      text: '체크인',
                      weight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('날짜 입력')
                  ],
                ),
              ),
              width: 160,
              height: 70,
              decoration: BoxDecoration(
                  color: controller.isSecondGridHovering.value
                      ? Color(0xffe7e6e6)
                      : Colors.white,
                  borderRadius: BorderRadius.circular(50)),
            )));
  }
}

import 'package:airbnb_ui/controller/search_bar_controller.dart';
import 'package:airbnb_ui/custom/customedText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class DateGrid extends StatelessWidget {
  DateGrid({Key? key}) : super(key: key);
  SearchBarController controller = Get.put(SearchBarController());

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
            onHover: (value) {
              controller.isDateGridHovering.value = value;
            },
            onTap: () {},
            child: Obx(() => Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(25, 10, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomedText(
                          text: '날짜',
                          weight: FontWeight.bold,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text('원하는 날짜를 입력하세요')
                      ],
                    ),
                  ),
                  width: 340,
                  height: 70,
                  decoration: BoxDecoration(
                      color: controller.isDateGridHovering.value
                          ? Color(0xffe7e6e6)
                          : Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                ))),
        Positioned(
          top: 8,
          left: 284,
          child: InkWell(
              onTap: () {},
              onHover: (value) {
                controller.isSearchButtonHovering.value = value;
              },
              child: Obx(
                () => Container(
                  width: 50,
                  height: 50,
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                      color: controller.isSearchButtonHovering.value
                          ? Color(0xffdc1638)
                          : Color(0xffff395b),
                      borderRadius: BorderRadius.circular(100)),
                ),
              )),
        ),
      ],
    );
  }
}

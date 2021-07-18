import 'package:airbnb_ui/controller/search_bar_controller.dart';
import 'package:airbnb_ui/custom/customedText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class ForthGrid extends StatelessWidget {
  ForthGrid({Key? key}) : super(key: key);
  SearchBarController controller = Get.put(SearchBarController());

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
            onHover: (value) {
              controller.isForthGridHovering.value = value;
            },
            onTap: () {},
            child: Obx(() => Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(25, 10, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomedText(
                          text: '인원',
                          weight: FontWeight.bold,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text('게스트 추가')
                      ],
                    ),
                  ),
                  width: 210,
                  height: 70,
                  decoration: BoxDecoration(
                      color: controller.isForthGridHovering.value
                          ? Color(0xffe7e6e6)
                          : Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                ))),
        Positioned(
          top: 10,
          left: 150,
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

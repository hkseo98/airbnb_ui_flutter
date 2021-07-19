import 'package:airbnb_ui/app_bar/end.dart';
import 'package:airbnb_ui/controller/center_bar_controller.dart';
import 'package:airbnb_ui/custom/customedText.dart';
import 'package:airbnb_ui/search.dart/exercise_search.dart';
import 'package:airbnb_ui/search.dart/room_search.dart';
import 'package:airbnb_ui/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants.dart';

const _url = 'https://www.airbnb.co.kr/s/experiences/online';

// ignore: must_be_immutable
class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);
  CenterBarController controller = Get.put(CenterBarController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          _buildHeader(context),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      height: 600,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('background.webp'), fit: BoxFit.cover)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(Large_padding),
            child: Row(
              children: [
                Image.asset(
                  "airbnb_logo.png",
                  width: 30,
                  height: 30,
                  color: Colors.white,
                ),
                SizedBox(
                  width: Xsmall_margin,
                ),
                InkWell(
                    onTap: () {
                      print('clicked logo');
                    },
                    child: Text(
                      'airbnb',
                      style: TextAppBarLogoStyle,
                    )),
                Spacer(),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 10,
                ),
                InkWell(
                    onHover: (value) {
                      controller.isRoomHovering.value = value;
                    },
                    onTap: () {
                      controller.activeGrid.value = 'room';
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          '숙소',
                          style: TextAppBarTextStyle,
                        ),
                        Obx(
                          () => controller.activeGrid.value == 'room'
                              ? Column(
                                  children: [
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Container(
                                        width: 20,
                                        height: 2,
                                        color: Colors.white),
                                  ],
                                )
                              : controller.isRoomHovering.value
                                  ? Column(
                                      children: [
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Container(
                                            width: 4,
                                            height: 2,
                                            color: Colors.white),
                                      ],
                                    )
                                  : Container(),
                        )
                      ],
                    )),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                    onHover: (value) {
                      controller.isExcerciseHovering.value = value;
                    },
                    onTap: () {
                      controller.activeGrid.value = 'exercise';
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          '체험',
                          style: TextAppBarTextStyle,
                        ),
                        Obx(
                          () => controller.activeGrid.value == 'exercise'
                              ? Column(
                                  children: [
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Container(
                                        width: 20,
                                        height: 2,
                                        color: Colors.white),
                                  ],
                                )
                              : controller.isExcerciseHovering.value
                                  ? Column(
                                      children: [
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Container(
                                            width: 4,
                                            height: 2,
                                            color: Colors.white),
                                      ],
                                    )
                                  : Container(),
                        )
                      ],
                    )),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                    onHover: (value) {
                      controller.isOnlineHovering.value = value;
                    },
                    onTap: () {
                      launch(_url);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          '온라인 체험',
                          style: TextAppBarTextStyle,
                        ),
                        Obx(
                          () => controller.activeGrid.value == 'online'
                              ? Column(
                                  children: [
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Container(
                                        width: 20,
                                        height: 2,
                                        color: Colors.white),
                                  ],
                                )
                              : controller.isOnlineHovering.value
                                  ? Column(
                                      children: [
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Container(
                                            width: 4,
                                            height: 2,
                                            color: Colors.white),
                                      ],
                                    )
                                  : Container(),
                        )
                      ],
                    )),
                Spacer(),
                Row(
                  children: build_end(),
                )
              ],
            ),
          ),
          Obx(() => controller.activeGrid.value == ''
              ? RoomSearch()
              : controller.activeGrid.value == 'room'
                  ? RoomSearch()
                  : controller.activeGrid.value == 'exercise'
                      ? ExerciseSearch()
                      : RoomSearch()),
          Spacer(),
          Center(
              child: CustomedText(text: '어디든 상관없이 떠나고 싶을 때 에어비앤비가 도와 드립니다!')),
          SizedBox(
            height: 15,
          ),
          InkWell(
              onHover: (value) {
                controller.isFlexibleSearchHovering.value = value;
              },
              onTap: () {},
              child: Obx(
                () => Container(
                  child: Center(
                      child: Image.asset(
                    'gradient.png',
                    width: 120,
                    height: 30,
                  )),
                  width: 200,
                  height: 70,
                  decoration: BoxDecoration(
                      boxShadow: [
                        controller.isFlexibleSearchHovering.value
                            ? BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                spreadRadius: 1,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 1), // changes position of shadow
                              )
                            : BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 1,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 1), // changes position of shadow
                              )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(35)),
                ),
              )),
          Spacer(),
        ],
      ),
    );
  }
}

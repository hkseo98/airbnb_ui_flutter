import 'package:get/get.dart';

class CenterBarController extends GetxController {
  RxBool isRoomHovering = false.obs;
  RxBool isExcerciseHovering = false.obs;
  RxBool isOnlineHovering = false.obs;

  RxBool isRoomTapped = false.obs;
  RxBool isExcerciseTapped = false.obs;
  RxBool isOnlineTapped = false.obs;

  RxString activeGrid = ''.obs;
}

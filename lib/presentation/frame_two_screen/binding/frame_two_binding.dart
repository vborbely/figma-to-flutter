import 'package:get/get.dart';

import '../controller/frame_two_controller.dart';

class FrameTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FrameTwoController());
  }
}

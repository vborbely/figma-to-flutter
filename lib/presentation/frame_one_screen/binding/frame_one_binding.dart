import 'package:get/get.dart';

import '../controller/frame_one_controller.dart';

class FrameOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FrameOneController());
  }
}

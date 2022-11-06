import 'package:application7/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:application7/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:application7/presentation/frame_one_screen/binding/frame_one_binding.dart';
import 'package:application7/presentation/frame_one_screen/frame_one_screen.dart';
import 'package:application7/presentation/frame_two_screen/binding/frame_two_binding.dart';
import 'package:application7/presentation/frame_two_screen/frame_two_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String frameOneScreen = '/frame_one_screen';

  static String frameTwoScreen = '/frame_two_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: frameOneScreen,
      page: () => FrameOneScreen(),
      bindings: [
        FrameOneBinding(),
      ],
    ),
    GetPage(
      name: frameTwoScreen,
      page: () => FrameTwoScreen(),
      bindings: [
        FrameTwoBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => FrameOneScreen(),
      bindings: [
        FrameOneBinding(),
      ],
    )
  ];
}

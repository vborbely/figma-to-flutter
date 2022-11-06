import 'package:application7/core/app_export.dart';
import 'package:flutter/material.dart';

import 'controller/app_navigation_controller.dart';

class AppNavigationScreen extends GetWidget<AppNavigationController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                  width: getHorizontalSize(375.00),
                  decoration: AppDecoration.fillWhiteA700,
                  child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: getPadding(left: 20, top: 10, right: 20, bottom: 10),
                            child: Text("lbl_app_navigation".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: AppStyle.txtRobotoRegular20))),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: getPadding(left: 20),
                            child: Text("msg_check_your_app".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: AppStyle.txtRobotoRegular16))),
                    Container(
                        height: getVerticalSize(1.00),
                        width: getHorizontalSize(375.00),
                        margin: getMargin(top: 5),
                        decoration: BoxDecoration(color: ColorConstant.black900))
                  ])),
              Expanded(
                  child: Align(
                      alignment: Alignment.center,
                      child: SingleChildScrollView(
                          child: Container(
                              decoration: AppDecoration.fillWhiteA700,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    GestureDetector(
                                        onTap: () {
                                          onTapFrameOne();
                                        },
                                        child: Container(
                                            width: getHorizontalSize(375.00),
                                            decoration: AppDecoration.fillWhiteA700,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment: Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: getPadding(left: 20, top: 10, right: 20, bottom: 10),
                                                          child: Text("lbl_frame_one".tr,
                                                              overflow: TextOverflow.ellipsis,
                                                              textAlign: TextAlign.center,
                                                              style: AppStyle.txtRobotoRegular20Black900))),
                                                  Container(
                                                      height: getVerticalSize(1.00),
                                                      width: getHorizontalSize(375.00),
                                                      margin: getMargin(top: 5),
                                                      decoration: BoxDecoration(color: ColorConstant.bluegray400))
                                                ]))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapFrameTwo();
                                        },
                                        child: Container(
                                            width: getHorizontalSize(375.00),
                                            decoration: AppDecoration.fillWhiteA700,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment: Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: getPadding(left: 20, top: 10, right: 20, bottom: 10),
                                                          child: Text("lbl_frame_two".tr,
                                                              overflow: TextOverflow.ellipsis,
                                                              textAlign: TextAlign.center,
                                                              style: AppStyle.txtRobotoRegular20Black9001))),
                                                  Container(
                                                      height: getVerticalSize(1.00),
                                                      width: getHorizontalSize(375.00),
                                                      margin: getMargin(top: 5),
                                                      decoration: BoxDecoration(color: ColorConstant.bluegray400))
                                                ])))
                                  ])))))
            ])));
  }

  onTapFrameOne() {
    Get.toNamed(AppRoutes.frameOneScreen);
  }

  onTapFrameTwo() {
    Get.toNamed(AppRoutes.frameTwoScreen);
  }
}

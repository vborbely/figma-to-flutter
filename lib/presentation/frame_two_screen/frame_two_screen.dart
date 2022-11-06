import 'package:application7/core/app_export.dart';
import 'package:flutter/material.dart';

import 'controller/frame_two_controller.dart';

class FrameTwoScreen extends GetWidget<FrameTwoController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.purpleA100,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: size.width,
                              margin: getMargin(top: 16),
                              child: Container(
                                  height: getSize(30.00),
                                  width: getSize(30.00),
                                  margin: getMargin(left: 14, right: 194),
                                  child: Stack(alignment: Alignment.centerLeft, children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: InkWell(
                                            onTap: () {
                                              onTapImgSettings();
                                            },
                                            child: CommonImageView(
                                                svgPath: ImageConstant.imgSettings,
                                                height: getSize(30.00),
                                                width: getSize(30.00)))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding: getPadding(left: 10, top: 7, right: 10, bottom: 7),
                                            child: InkWell(
                                                onTap: () {
                                                  onTapImgArrowleft();
                                                },
                                                child: CommonImageView(
                                                    svgPath: ImageConstant.imgArrowleft,
                                                    height: getVerticalSize(15.00),
                                                    width: getHorizontalSize(7.00)))))
                                  ])))),
                      Padding(
                          padding: getPadding(left: 20, top: 69, right: 20),
                          child: Text("msg_finally_you_got".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratRegular18)),
                      Padding(
                          padding: getPadding(left: 20, top: 19, right: 20),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(getHorizontalSize(10.00)),
                              child: CommonImageView(
                                  imagePath: ImageConstant.imgImage1,
                                  height: getVerticalSize(142.00),
                                  width: getHorizontalSize(141.00),
                                  fit: BoxFit.cover))),
                      Padding(
                          padding: getPadding(left: 20, top: 29, right: 20),
                          child: Text("lbl_you_can_go_back".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratLight12)),
                      GestureDetector(
                          onTap: () {
                            onTapTxtGotoframe1();
                          },
                          child: Padding(
                              padding: getPadding(left: 20, top: 19, right: 20, bottom: 5),
                              child: Text("lbl_go_to_frame_1".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMontserratRegular18)))
                    ])))));
  }

  onTapImgSettings() {
    Get.toNamed(AppRoutes.frameOneScreen);
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapTxtGotoframe1() {
    Get.toNamed(AppRoutes.frameOneScreen);
  }
}

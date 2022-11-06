import 'package:application7/core/app_export.dart';
import 'package:flutter/material.dart';

import 'controller/frame_one_controller.dart';

class FrameOneScreen extends GetWidget<FrameOneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blue200,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Padding(
                          padding: getPadding(left: 19, top: 54, right: 19),
                          child: Text("lbl_uicode_sample_1".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratRegular24)),
                      GestureDetector(
                          onTap: () {
                            onTapRectangleTwo();
                          },
                          child: Container(
                              height: getVerticalSize(44.00),
                              width: getHorizontalSize(170.00),
                              margin: getMargin(left: 19, top: 54, right: 19),
                              decoration: BoxDecoration(
                                  color: ColorConstant.gray400,
                                  borderRadius: BorderRadius.circular(getHorizontalSize(10.00)),
                                  border: Border.all(color: ColorConstant.black900, width: getHorizontalSize(1.00)),
                                  boxShadow: [
                                    BoxShadow(
                                        color: ColorConstant.black9003f,
                                        spreadRadius: getHorizontalSize(2.00),
                                        blurRadius: getHorizontalSize(2.00),
                                        offset: Offset(0, 4))
                                  ]))),
                      Padding(
                          padding: getPadding(left: 19, top: 54, right: 19),
                          child: Text("lbl_button".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratRegular18)),
                      GestureDetector(
                          onTap: () {
                            onTapTxtGotoframe2();
                          },
                          child: Padding(
                              padding: getPadding(left: 19, top: 54, right: 19, bottom: 5),
                              child: Text("lbl_go_to_frame_2".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMontserratRegular18)))
                    ])))));
  }

  onTapRectangleTwo() {
    Get.toNamed(AppRoutes.frameTwoScreen);
  }

  onTapTxtGotoframe2() {
    Get.toNamed(AppRoutes.frameTwoScreen);
  }
}

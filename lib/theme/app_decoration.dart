import 'package:application7/core/app_export.dart';
import 'package:flutter/material.dart';

class AppDecoration {
  static BoxDecoration get fillBlue200 => BoxDecoration(
        color: ColorConstant.blue200,
      );

  static BoxDecoration get fillPurpleA100 => BoxDecoration(
        color: ColorConstant.purpleA100,
      );

  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder10 = BorderRadius.circular(
    getHorizontalSize(
      10.00,
    ),
  );
}

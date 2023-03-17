import 'package:flutter/material.dart';
import 'package:project_template_bloc/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get fillPink40067 => BoxDecoration(
        color: ColorConstant.pink40067,
      );
  static BoxDecoration get txtFillPink400 => BoxDecoration(
        color: ColorConstant.pink400,
      );
  static BoxDecoration get txtFillLightgreen800 => BoxDecoration(
        color: ColorConstant.lightGreen800,
      );
  static BoxDecoration get txtFillOrange300 => BoxDecoration(
        color: ColorConstant.orange300,
      );
  static BoxDecoration get fillGray100 => BoxDecoration(
        color: ColorConstant.gray100,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get fillBlueA400 => BoxDecoration(
        color: ColorConstant.blueA400,
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder8 = BorderRadius.circular(
    getHorizontalSize(
      8,
    ),
  );

  static BorderRadius circleBorder20 = BorderRadius.circular(
    getHorizontalSize(
      20,
    ),
  );

  static BorderRadius txtCircleBorder10 = BorderRadius.circular(
    getHorizontalSize(
      10,
    ),
  );

  static BorderRadius circleBorder16 = BorderRadius.circular(
    getHorizontalSize(
      16,
    ),
  );
}

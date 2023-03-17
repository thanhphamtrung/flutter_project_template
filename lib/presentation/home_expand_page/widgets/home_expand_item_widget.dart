import 'package:flutter/material.dart';
import 'package:project_template_bloc/core/app_export.dart';

// ignore: must_be_immutable
class HomeExpandItemWidget extends StatelessWidget {
  HomeExpandItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 8,
        top: 7,
        right: 8,
        bottom: 7,
      ),
      decoration: AppDecoration.fillGray100.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: getPadding(
              top: 2,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "CHECK IN/OUT",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtSFProTextSemibold12,
                ),
                Padding(
                  padding: getPadding(
                    top: 11,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "20",
                          style: TextStyle(
                            color: ColorConstant.cyan700,
                            fontSize: getFontSize(
                              24,
                            ),
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text: "/10",
                          style: TextStyle(
                            color: ColorConstant.gray800,
                            fontSize: getFontSize(
                              24,
                            ),
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            svgPath: ImageConstant.imgMinimize,
            height: getSize(
              40,
            ),
            width: getSize(
              40,
            ),
            margin: getMargin(
              left: 21,
              top: 16,
            ),
          ),
        ],
      ),
    );
  }
}

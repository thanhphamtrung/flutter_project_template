import 'package:flutter/material.dart';
import 'package:project_template_bloc/core/app_export.dart';

// ignore: must_be_immutable
class HomeExpand1ItemWidget extends StatelessWidget {
  HomeExpand1ItemWidget();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: getPadding(
          top: 11,
          bottom: 11,
        ),
        decoration: AppDecoration.fillPink40067,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.all(0),
              color: ColorConstant.blueA400,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    20,
                  ),
                ),
              ),
              child: Container(
                height: getSize(
                  40,
                ),
                width: getSize(
                  40,
                ),
                decoration: AppDecoration.fillBlueA400.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder20,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse140x40,
                      height: getSize(
                        40,
                      ),
                      width: getSize(
                        40,
                      ),
                      radius: BorderRadius.circular(
                        getHorizontalSize(
                          20,
                        ),
                      ),
                      alignment: Alignment.center,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse2,
                      height: getSize(
                        40,
                      ),
                      width: getSize(
                        40,
                      ),
                      radius: BorderRadius.circular(
                        getHorizontalSize(
                          20,
                        ),
                      ),
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 4,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Dianne Russell",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtSFProTextSemibold16,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 2,
                          bottom: 2,
                        ),
                        child: Text(
                          "08:00 AM",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtSFProTextRegular12,
                        ),
                      ),
                      Container(
                        margin: getMargin(
                          left: 8,
                        ),
                        padding: getPadding(
                          left: 8,
                          top: 1,
                          right: 8,
                          bottom: 1,
                        ),
                        decoration: AppDecoration.txtFillPink400.copyWith(
                          borderRadius: BorderRadiusStyle.txtCircleBorder10,
                        ),
                        child: Text(
                          "Pedicure 🦶 8 mins",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtSFProTextSemibold12Red100,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                left: 42,
                top: 10,
                bottom: 9,
              ),
              child: Text(
                "\$200.00",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtSFProTextSemibold16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

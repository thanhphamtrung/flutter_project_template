import '../home_expand_page/widgets/home_expand1_item_widget.dart';
import '../home_expand_page/widgets/home_expand_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:project_template_bloc/core/app_export.dart';
import 'package:project_template_bloc/widgets/app_bar/custom_app_bar.dart';
import 'package:project_template_bloc/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class HomeExpandPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            48,
          ),
          leadingWidth: 44,
          leading: CustomImageView(
            imagePath: ImageConstant.imgEllipse1,
            height: getSize(
              32,
            ),
            width: getSize(
              32,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                16,
              ),
            ),
            margin: getMargin(
              left: 12,
              top: 8,
              bottom: 8,
            ),
          ),
          centerTitle: true,
          title: Text(
            "Home",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtHeadline,
          ),
          actions: [
            CustomIconButton(
              height: 32,
              width: 32,
              margin: getMargin(
                left: 12,
                top: 8,
                right: 12,
                bottom: 8,
              ),
              child: CustomImageView(
                svgPath: ImageConstant.imgNotification,
              ),
            ),
          ],
          styleType: Style.bgFillPink40063,
        ),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              height: getVerticalSize(
                1080,
              ),
              width: getHorizontalSize(
                363,
              ),
              margin: getMargin(
                top: 12,
                right: 12,
                bottom: 5,
              ),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      margin: getMargin(
                        left: 12,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            ImageConstant.imgGroup7,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GridView.builder(
                            shrinkWrap: true,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              mainAxisExtent: getVerticalSize(
                                73,
                              ),
                              crossAxisCount: 2,
                              mainAxisSpacing: getHorizontalSize(
                                11,
                              ),
                              crossAxisSpacing: getHorizontalSize(
                                11,
                              ),
                            ),
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: 16,
                            itemBuilder: (context, index) {
                              return HomeExpandItemWidget();
                            },
                          ),
                          Padding(
                            padding: getPadding(
                              top: 9,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "See less",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtSFProTextSemibold14,
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgDownload,
                                  height: getSize(
                                    8,
                                  ),
                                  width: getSize(
                                    8,
                                  ),
                                  margin: getMargin(
                                    left: 4,
                                    top: 4,
                                    bottom: 4,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: getPadding(
                        top: 676,
                        right: 4,
                      ),
                      child: ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: getVerticalSize(
                              4,
                            ),
                          );
                        },
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return HomeExpand1ItemWidget();
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:project_template_bloc/core/app_export.dart';
import 'package:project_template_bloc/presentation/home_expand_page/home_expand_page.dart';
import 'package:project_template_bloc/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class HomeExpandContainerScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.homeExpandPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeExpandPage;
      case BottomBarEnum.Waitinglist:
        return "/";
      case BottomBarEnum.Booking2:
        return "/";
      case BottomBarEnum.Pos:
        return "/";
      case BottomBarEnum.History:
        return "/";
      case BottomBarEnum.More:
        return "/";
      default:
        return "/";
    }
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeExpandPage:
        return HomeExpandPage();
      default:
        return DefaultWidget();
    }
  }
}

import 'package:flutter/material.dart';
import 'package:project_template_bloc/presentation/home_expand_container_screen/home_expand_container_screen.dart';
import 'package:project_template_bloc/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String homeExpandPage = '/home_expand_page';

  static const String homeExpandContainerScreen =
      '/home_expand_container_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    homeExpandContainerScreen: (context) => HomeExpandContainerScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}

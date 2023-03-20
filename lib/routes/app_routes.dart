import 'package:flutter/material.dart';

import '../presentation/home_expand_container_screen/home_expand_container_screen.dart';
import '../presentation/test_ui/test_ui.dart';

class AppRoutes {
  static const String homeExpandPage = '/home_expand_page';

  static const String test_ui = '/test_ui';

  static const String homeExpandContainerScreen =
      '/home_expand_container_screen';

  static Map<String, WidgetBuilder> routes = {
    homeExpandContainerScreen: (context) => HomeExpandContainerScreen(),
    test_ui: (context) => TestUi(),
  };
}

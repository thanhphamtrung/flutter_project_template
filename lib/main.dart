import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_template_bloc/presentation/home_expand_container_screen/home_expand_container_screen.dart';
import 'package:project_template_bloc/routes/app_routes.dart';
import 'package:uni_links/uni_links.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  StreamSubscription? _sub;
  String _latestLink = 'Unknown';

// Define a function to handle incoming deep links.
  Future<void> initUniLinks() async {
    // Get the initial deep link.
    String? initialLink;
    try {
      initialLink = await getInitialLink();
    } on PlatformException {
      initialLink = 'Failed to get initial link.';
    } on FormatException {
      initialLink = 'Bad initial link format.';
    }

    // Check if the initial deep link matches the desired URL.
    if (initialLink ==
        'https://www.autotrader.com/cars-for-sale/?utm_source=app_tracking_test_source&utm_medium=app_tracking_test_medium&utm_campaign=app_tracking_test_campaign') {
      // Set the initial deep link as the latest deep link.
      _latestLink = initialLink!;

      // Set up a listener to handle incoming deep links.
      _sub = linkStream.listen((String? link) {
        if (!mounted) return;
        setState(() {
          _latestLink = link ?? 'Unknown';
        });

        // Check if the incoming deep link matches the desired URL.
        if (link ==
            'https://www.autotrader.com/cars-for-sale/?utm_source=app_tracking_test_source&utm_medium=app_tracking_test_medium&utm_campaign=app_tracking_test_campaign') {
          // Navigate to the appropriate screen in your app.
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => HomeExpandContainerScreen()));
        }
      }, onError: (err) {
        if (!mounted) return;
        setState(() {
          _latestLink = 'Failed to get the deep link: $err.';
        });
      });
    }
  }

// Override the dispose method to cancel the listener subscription.
  @override
  void dispose() {
    _sub?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        visualDensity: VisualDensity.standard,
      ),
      title: 'project_template_bloc',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.homeExpandContainerScreen,
      routes: AppRoutes.routes,
    );
  }
}

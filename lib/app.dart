import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocs/user_bloc/user_bloc.dart';
import 'core/app_export.dart';
import 'services/user_service.dart';
import 'repositories/user_repository.dart';

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  // Create a UserRepository object with a UserService object as a dependency
  final UserRepository userRepository = UserRepository(
    userService: UserService(),
  );

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(

      // Provide the UserRepository to all descendants
      providers: [
        RepositoryProvider<UserRepository>(create: (context) => userRepository),
      ],

      child: MultiBlocProvider(

        // Provide the UserBloc to all descendants
        providers: [
          BlocProvider<UserBloc>(
            create: (context) => UserBloc(userRepository: userRepository),
          ),
        ],

        child: MaterialApp(
          title: 'project_template_bloc',
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.homeExpandContainerScreen,
          routes: AppRoutes.routes,

          // Define the theme for the app
          theme: ThemeData(
            primaryColor: Colors.blue, // Set the primary color to blue
            visualDensity: VisualDensity.standard,
          ),
        ),
      ),
    );
  }
}

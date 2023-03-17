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
  final userRepository = UserRepository(
    userService: UserService(),
  );

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(value: userRepository),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<UserBloc>(
            create: (context) => UserBloc(
              userRepository: userRepository,
            ),
          ),
        ],
        child: MaterialApp(
          title: 'project_template_bloc',
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.test_ui,
          routes: AppRoutes.routes,
          theme: ThemeData(
            visualDensity: VisualDensity.standard,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_template_bloc/blocs/user_bloc/user_bloc.dart';

class TestUi extends StatelessWidget {
  const TestUi({super.key});

  @override
  Widget build(BuildContext context) {
    UserBloc userBloc = context.read<UserBloc>();
    userBloc.add(FetchUser());
    return Scaffold(
      body: Center(
        child: BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            if (state is UsersLoaded) {
              return Text(state.users.name);
            } else if (state is UserLoading) {
              return CircularProgressIndicator();
            } else if (state is UserError) {
              return Text('Something Wrong');
            }
            return Container();
          },
        ),
      ),
    );
  }
}

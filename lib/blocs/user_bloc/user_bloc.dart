import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_template_bloc/blocs/abc_bloc/abc_bloc.dart';

import '../../models/user.dart';
import '../../repositories/user_repository.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository userRepository;
  final AbcBloc abcBloc = AbcBloc();

  UserBloc({
    required this.userRepository,
  }) : super(UserInitial()) {
    on<FetchUser>((event, emit) async {
      emit(UserLoading());
      try {
        final users = await userRepository.fetchUser();
        emit(UsersLoaded(users));
        abcBloc.add(AbcLoaded());
      } catch (e) {
        emit(UserError());
      }
    });
  }
}

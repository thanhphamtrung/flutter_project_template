part of 'user_bloc.dart';

abstract class UserState extends Equatable {}

class UserInitial extends UserState {
  @override
  List<Object?> get props => [];
}

class UsersLoaded extends UserState {
  final User users;

  UsersLoaded(this.users);
  @override
  List<Object?> get props => [];
}

class UserLoading extends UserState {
  @override
  List<Object?> get props => [];
}

class UserError extends UserState {
  @override
  List<Object?> get props => [];
}

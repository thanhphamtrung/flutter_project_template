import '../models/user.dart';
import '../services/user_service.dart';

class UserRepository {
  final UserService userService;
  UserRepository({
    required this.userService,
  });
  int _numberOfUser = 0;
  late User _user;

  Future<int> get() async {
    return _numberOfUser;
  }

  Future<void> setCounter(int counter) async {
    _numberOfUser = counter;
  }

  Future<User> fetchUser() async {
    _user = await userService.fetchUser('1');
    return _user;
  }
}

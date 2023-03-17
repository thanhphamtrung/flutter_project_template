import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:project_template_bloc/models/user.dart';

class UserService {
  static const String baseUrl = 'https://jsonplaceholder.typicode.com';

  Future<User> fetchUser(String userId) async {
    final response = await http.get(Uri.parse('$baseUrl/users/$userId'));
    if (response.statusCode == 200) {
      final userData = jsonDecode(response.body);
      return User.fromJson(userData);
    } else {
      throw Exception('Failed to load user');
    }
  }
}

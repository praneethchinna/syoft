import 'dart:convert';

import 'package:http/http.dart' as http;

Future<bool> validateCredentials(String username, String password) async {
  final response = await http.get(
    Uri.parse(
        'http://localhost:3000/users?username=$username&password=$password'),
  );

  if (response.statusCode == 200) {
    final List<dynamic> users = json.decode(response.body);
    return users.isNotEmpty;
  } else {
    return false;
  }
}

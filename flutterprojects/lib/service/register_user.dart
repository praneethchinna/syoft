import 'dart:convert';

import 'package:http/http.dart' as http;

Future<bool> signUp(String firstName, String email, String pswd,
    String phNumber, String lastName, String city, String zipCode) async {
  const String apiUrl =
      'https://snapkaro.com/eazyrooms_staging/api/user_registeration';

  final Map<String, dynamic> formData = {
    'user_firstname': firstName,
    'user_email': email,
    'user_phone': phNumber,
    'user_password': pswd,
    'user_lastname': lastName,
    'user_city': city,
    'user_zipcode': zipCode,
  };

  final response = await http.post(
    Uri.parse(apiUrl),
    body: json.encode(formData),
    headers: {'Content-Type': 'application/json'},
  );

  if (response.statusCode == 200) {
    return true;
  } else {
    return false;
  }
}

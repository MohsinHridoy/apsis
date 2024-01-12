import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:untitled/model/register/register.dart';

class RegistrationProvider extends ChangeNotifier {
  final String baseUrl = 'http://10.0.2.2:3000'; // Replace with your API base URL

  Future<void> registerUser(User user) async {
    final String apiUrl = '$baseUrl/register';

    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(user.toJson()), // Assuming toJson() is implemented in User model
      );

      if (response.statusCode == 200) {
        // Registration successful
        // You can perform additional logic here if needed
        print('Registration successful');
      } else {
        // Registration failed
        // Handle errors or update the state accordingly
        print('Registration failed. Status Code: ${response.statusCode}');
      }
    } catch (error) {
      // Handle network or server errors
      print('Error during registration: $error');
    }
  }
}

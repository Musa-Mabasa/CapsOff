// import 'dart:io';
// import 'dart:typed_data';
// import 'package:crypt/crypt.dart';
// import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;
// import 'package:intl/intl.dart';
import 'dart:async';
import 'dart:convert';

// import 'lib/models/user.dart';
class UserServices {
  Future loginUser(String email, String mobileNo, String password) async {
    String data = jsonEncode({
      'mobileNo': mobileNo,
      'email': email,
      'password': password,
      'type': ''
    });
    final header = <String, String>{
      'Content-Type': 'application/json; charset=utf-8'
    };
    final url = Uri.parse('https://stemapi8.azurewebsites.net/login');

    try {
      final response = await http.post(url, headers: header, body: data);
      if (response.statusCode == 200) {
        return true;
      } else {
        print(response.statusCode);
        throw 'Could not log in ';
      }
    } catch (e) {
      rethrow;
    }
  }
}

// import 'dart:convert';

// import 'package:flutter/cupertino.dart';
// import 'package:http/http.dart' as http;

// class Authentication with ChangeNotifier {
//   Future<void> signup(String email, String password) async {
//     const url =
//         'https://identitytoolkit.googleapis.com/v1/accounts:signInWithCustomToken?key=AIzaSyBevUAukdlHxhUjWlnsBwuTOcwH0_5xZr4';
//     final response = await http.post(url,
//         body: json.encode({
//           'email': email,
//           'password': password,
//           'returnSecureToken': true,
//         }));
//     final responseData = json.decode(response.body);
//     print(responseData);
//   }
// }

// ignore_for_file: use_build_context_synchronously

import 'package:el_musico/api/api_constant.dart';
import 'package:el_musico/constants.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class WebService {
  checkServerConnection(BuildContext context) async {
    var response = await http.get(Uri.parse(apiUri));
    if (response.statusCode == 200) {
      return showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text(
                "Server Connection",
                style: TextStyle(fontSize: xl, color: gray),
              ),
              content: Text(
                'You are connected to server',
                style: TextStyle(fontSize: lg, color: grey),
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'OK',
                      style: TextStyle(
                          color: gray,
                          fontSize: ml,
                          fontWeight: FontWeight.w700),
                    ))
              ],
            );
          });
    }
  }

  Future<void> authenticateToken(String token) {
    return http.get(Uri.parse(apiUri), headers: {
      "Authorization": "Bearer $token",
      "Content-Type": "application/json"
    });
  }
}

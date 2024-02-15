import 'dart:convert';

import 'package:el_musico/api/api_constant.dart';
import 'package:el_musico/models/album_model.dart';
import 'package:el_musico/services/web_services.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AlbumService with ChangeNotifier {
  List<Album> album = [];
  WebService webService = WebService();

  Future<List<Album>> getAlbum(int id) async {
    webService.authenticateToken(apiUri);
    var response = await http.get(Uri.parse('$apiUri/album/$id'));
    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);
      final alresult =
          List<Album>.from(result.map((data) => Album.albumsfromJson(data)))
              .toList();
      album = alresult;
    } else {
      return [];
    }

    return album;
  }
}

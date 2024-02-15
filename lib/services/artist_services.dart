import 'dart:convert';

import 'package:el_musico/api/api_constant.dart';
import 'package:el_musico/models/artist_model.dart';
import 'package:el_musico/services/web_services.dart';
import 'package:http/http.dart' as http;

class ArtistService {
  WebService webService = WebService();
  List<Artist> artistLists = [];

  Future<void> getArtist(int id) async {
    webService.authenticateToken(apiUri);
    try {
      var response = await http.get(Uri.parse("${apiUri}artist/$id"));
      if (response.statusCode == 200) {
        var result = jsonDecode(response.body);
        if (result != null) {
          artistLists = result;
        }
      }
    } catch (ex) {
      throw Exception(ex.toString());
    }
  }
}

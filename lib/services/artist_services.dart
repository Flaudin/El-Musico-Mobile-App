import 'dart:convert';

import 'package:el_musico/api/api_constant.dart';
import 'package:el_musico/models/artist_model.dart';
import 'package:el_musico/services/web_services.dart';
import 'package:http/http.dart' as http;

class ArtistService {
  WebService webService = WebService();
  List<Artist> artistLists = [];

  Future<Artist> getArtist() async {
    webService.authenticateToken(apiUri);
    try {
      var response = await http.get(Uri.parse("${apiUri}artist/27?top=10"));
      if (response.statusCode == 200) {
        return Artist.artistfromJson(jsonDecode(response.body));
      } else {
        throw Exception('Failed to load data');
      }
    } catch (ex) {
      throw Exception(ex.toString());
    }
  }
}

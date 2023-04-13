import 'dart:convert';

import 'package:http/http.dart' as http;

class CatService {
  static Future<List<dynamic>> getCatFacts() async {
    var url = 'https://cat-fact.herokuapp.com/facts';
    var response = await http.get(Uri.parse(url));
    return json.decode(response.body);
  }

  /// get single cat breed
  static Future<dynamic> getCatBreed(String id) async {
    var url = 'https://cat-fact.herokuapp.com/facts/$id';
    var response = await http.get(Uri.parse(url));
    return json.decode(response.body);
  }
}

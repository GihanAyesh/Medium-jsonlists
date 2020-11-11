import 'dart:convert';
import 'package:http/http.dart' as http;
import 'album.dart';

class API {
  static Future<void> getAlbums() async {
    http.Response response = await http.get(
        Uri.encodeFull('https://jsonplaceholder.typicode.com/albums'), //url
        headers: {"Accept": "application/json"});
    if (response.statusCode == 200) {
      List<Album> albumlist;
      albumlist = (json.decode(response.body) as List)
          .map((i) => Album.fromJson(i))
          .toList();
      print('${albumlist[0].id}' + '\t' + '${albumlist[0].name}');
    } else {
      throw Exception('Failed to load campaigns');
    }
  }
}

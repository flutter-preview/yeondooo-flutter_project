import 'dart:convert';
import 'package:http/http.dart' as http;
import '../dto/album_dto.dart';

class AlbumApi {
  Future<List<AlbumDto>> getAlbums() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));

    final json = jsonDecode(response.body) as List;
    final fromJson = json.map((e) => AlbumDto.fromJson(e)).toList();

    return fromJson;
  }
}

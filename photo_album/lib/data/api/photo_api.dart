import 'dart:convert';
import 'package:http/http.dart' as http;
import '../dto/photo_dto.dart';

class PhotoApi {
  Future<List<PhotoDto>> getPhotos(int albumId) async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos?albumId=$albumId'));

    final json = jsonDecode(response.body) as List;
    final fromJson = json.map((e) => PhotoDto.fromJson(e)).toList();

    return fromJson;
  }
}

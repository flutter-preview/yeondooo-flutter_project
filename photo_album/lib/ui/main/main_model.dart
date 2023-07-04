import 'package:photo_album/data/api/album_api.dart';

class MainModel {
  final getAlbums = AlbumApi().getAlbums();
}

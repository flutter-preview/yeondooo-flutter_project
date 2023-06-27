import 'package:photo_album/data/dto/album_dto.dart';
import '../model/album.dart';

extension ToAlbum on AlbumDto {
  Album toAlbum() {
    return Album(
      userId: userId ?? 1,
      id: id ?? 1,
      title: title ?? '',
    );
  }
}

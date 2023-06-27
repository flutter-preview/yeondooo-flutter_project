import 'package:photo_album/data/dto/photo_dto.dart';
import 'package:photo_album/data/model/photo.dart';

extension ToPhoto on PhotoDto {
  Photo toPhoto() {
    return Photo(
      title: title ?? '',
      albumId: albumId ?? 1,
      id: id ?? 1,
      thumbnailUrl: thumbnailUrl ?? '',
      url: url ?? '',
    );
  }
}

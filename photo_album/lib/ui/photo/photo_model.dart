import '../../data/api/photo_api.dart';

class PhotoModel {
  final getPhotos = PhotoApi().getPhotos(1);
}

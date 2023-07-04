import 'package:firebase_auth/firebase_auth.dart';

class DetailPostModel {
  String getEmail() {
    return FirebaseAuth.instance.currentUser?.email ?? '';
  }

  String getNickName() {
    return FirebaseAuth.instance.currentUser?.displayName ?? '이름없음';
  }

  String getProfileImageUrl() {
    return FirebaseAuth.instance.currentUser?.photoURL ??
        'https://cdn.mmnews.co.kr/news/photo/202204/8717_7554_2424.jpg';
  }
}

import 'package:go_router/go_router.dart';
import 'package:photo_album/ui/photo/photo_screen.dart';

import '../ui/main/main_screen.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const MainScreen(),
    ),
    GoRoute(
      path: '/detail',
      builder: (context, state) => const PhotoScreen(),
    ),
  ],
);

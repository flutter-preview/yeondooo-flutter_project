import 'package:food_delivery_order_service/ui/main/main_screen.dart';
import 'package:food_delivery_order_service/ui/order/order_screen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const MainScreen(),
    ),
    GoRoute(
      path: '/order',
      builder: (context, state) => const OrderScreen(),
    ),
  ],
);

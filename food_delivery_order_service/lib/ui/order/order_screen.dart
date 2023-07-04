import 'package:flutter/material.dart';
import 'package:food_delivery_order_service/ui/order/menu_category_widget.dart';
import 'package:food_delivery_order_service/ui/order/restaurant_info_widget.dart';
import 'app_bar_widget.dart';
import 'menu_item_widget.dart';
import 'menu_title_widget.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          AppBarWidget(),
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                RestaurantInfoWidget(),
                Column(
                  children: [
                    MenuTitleWidget(),
                    MenuCategoryWidget(),
                    MenuItemWidget(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

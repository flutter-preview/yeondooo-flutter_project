import 'package:flutter/material.dart';
import 'package:food_delivery_order_service/ui/main/search_bar_widget.dart';
import 'app_bar_widget.dart';
import '../components/bottom_navigation_widget.dart';
import 'food_category_widget.dart';
import 'restaurant_list_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(150),
        child: AppBarWidget(),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverPersistentHeader(
            pinned: true,
            delegate: MyPersistentHeaderDelegate(
              minHeight: 150,
              maxHeight: 150,
              child: Container(
                color: Colors.white,
                child: const Column(
                  children: [
                    SearchBarWidget(),
                    FoodCategoryWidget(),
                  ],
                ),
              ),
            ),
          ),
          const RestaurantListWidget(),
        ],
      ),
      bottomNavigationBar: BottomNavigationWidget(
        onItemTapped: _onItemTapped,
        currentIndex: _selectedIndex,
      ),
    );
  }
}

class MyPersistentHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;
  final Widget child;

  MyPersistentHeaderDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => maxHeight;

  @override
  Widget build(
      BuildContext context,
      double shrinkOffset,
      bool overlapsContent,
      ) {
    return child;
  }

  @override
  bool shouldRebuild(covariant MyPersistentHeaderDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}



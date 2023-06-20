import 'package:flutter/material.dart';
import 'package:youtube_clone/ui/components/bottom_navigationbar_widget.dart';
import 'package:youtube_clone/ui/components/sliver_appbar_widget.dart';
import 'package:youtube_clone/ui/components/sliver_to_box_adapter_widget.dart';

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
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBarWidget(
        onItemTapped: _onItemTapped,
        currentIndex: _selectedIndex,
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBarWidget(),
          SliverList(
            // Use a delegate to build items as they're scrolled on screen.
            delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(
                  title: Text(
                'Item #$index',
                style: const TextStyle(color: Colors.white),
              )),
              childCount: 1,
            ),
          ),
          const SliverToBoxAdapterWidget(
            texts: [
              '첫번째 Shorts',
              '두번째 Shorts',
              'Shorts',
              'Shorts',
              'Shorts',
              'Shorts',
            ],
          ),
          SliverList(
            // Use a delegate to build items as they're scrolled on screen.
            delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(
                  title: Text(
                'Item #$index',
                style: const TextStyle(color: Colors.white),
              )),
              childCount: 50,
            ),
          ),
        ],
      ),
    );
  }
}

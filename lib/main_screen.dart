import 'package:flutter/material.dart';
import 'package:youtube_clone/ui/components/bottom_navigation_widget.dart';
import 'package:youtube_clone/ui/components/category_item_widget.dart';
import 'package:youtube_clone/ui/components/shorts_title_widget.dart';
import 'package:youtube_clone/ui/components/appbar_widget.dart';
import 'package:youtube_clone/ui/components/shorts_item_widget.dart';
import 'package:youtube_clone/ui/components/top_video_item_widget.dart';
import 'package:youtube_clone/ui/components/video_item_widget.dart';

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
      bottomNavigationBar: BottomNavigationWidget(
        onItemTapped: _onItemTapped,
        currentIndex: _selectedIndex,
      ),
      body: const CustomScrollView(
        slivers: [
          AppBarWidget(),
          CategoryItemWidget(
            categoryItems: [
              '🧭',
              '전체',
              '실시간',
              '엄청 긴 아이템 이름을 적어봄',
              '음악',
              '뉴스',
              '게임',
              '요리',
              '축구',
              '관광지',
            ],
          ),
          TopVideoItemWidget(),
          ShortsTitleWidget(),
          ShortsItemsWidget(
            images: [
              'assets/photo1.jpeg',
              'assets/photo2.jpeg',
              'assets/photo.jpeg',
              'assets/photo1.jpeg',
              'assets/photo.jpeg',
              'assets/photo2.jpeg',
            ],
            texts: [
              '조회수 11만회',
              '조회수 211만회',
              '조회수 145만회',
              '조회수 3만회',
              '조회수 123만회',
              '조회수 43만회',
            ],
          ),
          VideoItemWidget(),
        ],
      ),
    );
  }
}

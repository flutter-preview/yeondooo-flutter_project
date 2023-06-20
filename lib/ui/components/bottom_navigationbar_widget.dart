import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  final ValueChanged<int> onItemTapped;
  final int currentIndex;

  const BottomNavigationBarWidget({
    required this.onItemTapped,
    required this.currentIndex,
  });

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState
    extends State<BottomNavigationBarWidget> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home_filled),
          label: '홈',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.play_circle_outline),
          activeIcon: Icon(Icons.play_circle_fill),
          label: 'Shorts',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.add_circle_outline,
            size: 40,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.subscriptions_outlined),
          activeIcon: Icon(Icons.subscriptions),
          label: '구독',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.video_library_outlined),
          activeIcon: Icon(Icons.video_library),
          label: '보관함',
        ),
      ],
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white60,
      currentIndex: widget.currentIndex,
      onTap: widget.onItemTapped,
      type: BottomNavigationBarType.fixed,
    );
  }
}

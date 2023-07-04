import 'package:flutter/material.dart';

class BottomNavigationWidget extends StatefulWidget {
  final ValueChanged<int> onItemTapped;
  final int currentIndex;

  const BottomNavigationWidget({super.key,
    required this.onItemTapped,
    required this.currentIndex,
  });

  @override
  State<BottomNavigationWidget> createState() =>
      _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        const BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home_filled),
          label: '홈',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.play_circle_outline),
          activeIcon: Icon(Icons.play_circle_fill),
          label: 'Shorts',
        ),
        const BottomNavigationBarItem(
          icon: Icon(
            Icons.add_circle_outline,
            size: 40,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Stack(
            children: [
              const Icon(Icons.subscriptions_outlined),
              Positioned(
                right: 0,
                top: 0,
                child: Container(
                  width: 12,
                  height: 12,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
          activeIcon: Stack(
            children: [
              const Icon(Icons.subscriptions),
              Positioned(
                right: 0,
                top: 0,
                child: Container(
                  width: 12,
                  height: 12,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
          label: '구독',
        ),
        const BottomNavigationBarItem(
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

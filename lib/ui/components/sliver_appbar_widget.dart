import 'package:flutter/material.dart';

class SliverAppBarWidget extends StatelessWidget {
  const SliverAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: const Row(
        children: [
          Icon(
            Icons.smart_display,
            color: Colors.red,
          ),
          SizedBox(
            width: 4,
          ),
          Text(
            'YouTube',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(
            Icons.cast,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        Stack(
          children: [
            IconButton(
              icon: const Icon(
                Icons.add_alert_outlined,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            Positioned(
              right: 2,
              top: 8,
              child: Container(
                width: 24,
                height: 16,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Center(
                  child: Text(
                    '8+',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        IconButton(
          icon: const Icon(
            Icons.search,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        const Padding(padding: EdgeInsets.all(2)),
        InkWell(
          child: ClipOval(
            child: Image.asset(
              'assets/profile.png',
              width: 28,
              height: 28,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
      floating: true,
      flexibleSpace: const Scaffold(
        backgroundColor: Colors.black,
      ),
      expandedHeight: 50,
    );
  }
}

import 'package:flutter/material.dart';

class SliverAppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: const Text(
        'YOUTUBE',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(
            Icons.cast,
            color: Colors.white60,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(
            Icons.add_alert_outlined,
            color: Colors.white60,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(
            Icons.search,
            color: Colors.white60,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(
            Icons.account_circle_outlined,
            color: Colors.white60,
          ),
          onPressed: () {},
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

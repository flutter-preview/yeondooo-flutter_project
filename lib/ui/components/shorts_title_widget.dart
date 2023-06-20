import 'package:flutter/material.dart';

class ShortsTitleWidget extends StatelessWidget {
  const ShortsTitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.0),
        child: Row(
          children: [
            Icon(
              Icons.play_circle,
              color: Colors.red,
            ),
            SizedBox(
              width: 6,
            ),
            Text(
              'Shorts',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MenuTitleWidget extends StatelessWidget {
  const MenuTitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Row(
        children: [
          Text(
            'Menu',
            style: TextStyle(
              color: Color(0xFF00182e),
              fontSize: 18,
              fontWeight: FontWeight.w800,
            ),
          ),
          Spacer(),
          Text(
            '45 dishes',
            style: TextStyle(
              color: Color(0xFF00182e),
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }
}

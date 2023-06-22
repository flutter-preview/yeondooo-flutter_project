import 'package:flutter/material.dart';

class RestaurantInfoWidget extends StatelessWidget {
  const RestaurantInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'About',
              style: TextStyle(
                color: Color(0xFF00182e),
                fontSize: 18,
                fontWeight: FontWeight.w800,
              ),
            ),
            Spacer(),
            Icon(
              Icons.star,
              color: Colors.yellow,
              size: 16,
            ),
            Icon(
              Icons.star,
              color: Colors.yellow,
              size: 16,
            ),
            Icon(
              Icons.star,
              color: Colors.yellow,
              size: 16,
            ),
            Icon(
              Icons.star,
              color: Colors.yellow,
              size: 16,
            ),
            Icon(
              Icons.star_half,
              color: Colors.yellow,
              size: 16,
            ),
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: Text(
                '4.5',
                style: TextStyle(
                  color: Color(0xFF00182e),
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            'The panoramic dining at 11 Mirrors Rooftop Restaurant presents a number of trademark dishes.',
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Text(
            '11.1km﹒﹩﹩﹩﹒Seafood',
            style: TextStyle(
              color: Colors.black26,
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
  }
}

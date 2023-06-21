import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Hero(
                tag: 'restaurantImage',
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                  ),
                  child: Image.asset(
                    'assets/restaurant1.jpeg',
                    width: double.infinity,
                    height: 280,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Positioned(
                top: 200,
                left: 32,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '11 Mirrors Rooftop',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.pin_drop,
                          color: Colors.white,
                          size: 12,
                        ),
                        Text(
                          '426 Amsterdam Ave, NY',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: AppBar(
                  iconTheme: const IconThemeData(color: Colors.white),
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Column(
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
                Padding(
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

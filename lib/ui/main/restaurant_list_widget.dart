import 'package:flutter/material.dart';

import '../order/order_screen.dart';

class RestaurantListWidget extends StatelessWidget {
  const RestaurantListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
          return Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(16),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    blurRadius: 3,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                                return const OrderScreen();
                              }));
                        },
                        child: Hero(
                          tag: 'restaurantImage',
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/restaurant1.jpeg',
                              fit: BoxFit.cover,
                              width: 100,
                              height: double.infinity,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'The Mermaid Inn',
                                style: TextStyle(
                                  color: Color(0xFF00182e),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.star_border_outlined,
                                color: Colors.yellow,
                                size: 12,
                              ),
                              Text(
                                '4.6',
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.pin_drop,
                                color: Colors.black54,
                                size: 12,
                              ),
                              Text(
                                '570 Amsterdam Ave, NY',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '16.2 km﹒﹩﹩﹩﹒Seafood',
                            style: TextStyle(
                              color: Colors.black26,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        childCount: 1,
      ),
    );
  }
}

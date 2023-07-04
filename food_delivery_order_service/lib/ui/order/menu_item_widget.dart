import 'package:flutter/material.dart';

class MenuItemWidget extends StatelessWidget {
  const MenuItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: ClipOval(
                  child: Image.asset(
                    'assets/food.jpeg',
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '12💲',
                    style: TextStyle(
                      color: Color(0xFF00182e),
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      'Chicken salad',
                      style: TextStyle(
                        color: Color(0xFF00182e),
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  Text(
                    '460g﹒350 kcl',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          const Column(
            children: [
              Text(
                '+',
                style: TextStyle(
                  color: Color(0xFF00182e),
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 4),
                child: Text(
                  '0',
                  style: TextStyle(
                    color: Color(0xFF00182e),
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                ),
              ),
              Text(
                '-',
                style: TextStyle(
                  color: Color(0xFF00182e),
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MenuCategoryWidget extends StatefulWidget {
  const MenuCategoryWidget({Key? key}) : super(key: key);

  @override
  State<MenuCategoryWidget> createState() => _MenuCategoryWidgetState();
}

class _MenuCategoryWidgetState extends State<MenuCategoryWidget> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: SizedBox(
        height: 30,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 4),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),

                ),
                child: Text(
                  'All dishes',
                  style: TextStyle(
                    color: _selectedIndex == index
                        ? const Color(0xFF00182e)
                        : Colors.grey,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SliverToBoxAdapterWidget extends StatelessWidget {
  final List<String> texts;

  const SliverToBoxAdapterWidget({Key? key, required this.texts})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 300,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: texts.length,
          itemBuilder: (context, index) {
            return SizedBox(
              width: 180,
              child: Card(
                child: Text(texts[index]),
              ),
            );
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:photo_album/data/dto/photo_dto.dart';
import 'package:photo_album/ui/photo/photo_model.dart';

class PhotoScreen extends StatelessWidget {
  const PhotoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = PhotoModel();

    return Scaffold(
      appBar: AppBar(
        title: const Text('ALBUM'),
      ),
      body: FutureBuilder<List<PhotoDto>>(
          future: model.getPhotos,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return const Text('Error 발생');
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            final album = snapshot.data!;

            return GridView.count(
              crossAxisCount: 3,
              children: List.generate(album.length, (index) {
                return Center(
                  child: Column(
                    children: [
                      Image.network(album[index].url),
                    ],
                  ),
                );
              }),
            );
          }),
    );
  }
}

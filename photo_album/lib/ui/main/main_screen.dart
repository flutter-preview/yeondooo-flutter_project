import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:photo_album/data/dto/album_dto.dart';
import 'package:photo_album/ui/main/main_model.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = MainModel();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Photo Album'),
      ),
      body: FutureBuilder<List<AlbumDto>>(
          future: model.getAlbums,
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

            return ListView.builder(
              itemCount: album.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: GestureDetector(
                    onTap: () {
                      context.push('/detail');
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('userId: ${album[index].userId}'),
                        Text('id: ${album[index].id}'),
                        Text('title: ${album[index].title}'),
                      ],
                    ),
                  ),
                );
              },
            );
          }),
    );
  }
}

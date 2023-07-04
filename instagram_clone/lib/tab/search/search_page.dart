import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/create/create_page.dart';
import 'package:instagram_clone/detail_post/detail_post_page.dart';
import 'package:instagram_clone/tab/search/search_model.dart';

import '../../domain/post.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  final List<String> _urls = const [
    'https://talkimg.imbc.com/TVianUpload/tvian/TViews/image/2023/04/27/0e83f60f-51d4-49b2-919c-92ec2ff928c5.jpg',
    'https://thumbnews.nateimg.co.kr/view610///news.nateimg.co.kr/orgImg/pt/2022/06/28/202206281630779508_62bab09b47ba0.jpg',
    'https://cphoto.asiae.co.kr/listimglink/1/2022071515463751809_1657867597.jpg',
    'https://cphoto.asiae.co.kr/listimglink/1/2022071515463751809_1657867597.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    final model = SearchModel();

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CreatePage()),
          );
        },
        child: const Icon(Icons.create),
      ),
      appBar: AppBar(
        title: const Text('Instagram Clone'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(2.0),
        child: StreamBuilder<QuerySnapshot<Post>>(
          stream: model.postsStream,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return const Text('Something went wrong');
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            List<Post> posts =
                snapshot.data!.docs.map((post) => post.data()).toList();

            return GridView.builder(
              itemCount: posts.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 2.0,
                crossAxisSpacing: 2.0,
              ),
              itemBuilder: (BuildContext context, int index) {
                final post = posts[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailPostPage(post: post)),
                    );
                  },
                  child: Hero(
                    tag: post.id,
                    child: Image.network(
                      post.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

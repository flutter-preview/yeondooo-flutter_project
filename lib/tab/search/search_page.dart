import 'package:flutter/material.dart';

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
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.create),
      ),
      appBar: AppBar(
        title: const Text('Instagram Clone'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(2.0),
        child: GridView.builder(
            itemCount: _urls.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 2.0,
              crossAxisSpacing: 2.0,
            ),
            itemBuilder: (BuildContext context, int index) {
              final url = _urls[index];
              return Image.network(
                url,
                fit: BoxFit.cover,
              );
            }),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class VideoItemWidget extends StatelessWidget {
  const VideoItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Column(
            children: [
              SizedBox(
                height: 250,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.asset(
                        'assets/photo1.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      right: 5,
                      bottom: 5,
                      child: Container(
                        width: 50,
                        padding: const EdgeInsets.symmetric(
                          vertical: 4,
                          horizontal: 5,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(4), // 모서리 둥글기 설정
                        ),
                        child: Center(
                          child: Text(
                            '${index}4:$index${index + 1}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: ClipOval(
                            child: SizedBox(
                              width: 35,
                              height: 35,
                              child: Image.asset(
                                'assets/profile.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '$index번째 동영상 입니다.🔥',
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              'YouTube﹒조회수 ${index + 1}만회﹒$index시간 전 ',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        childCount: 10,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Carrot extends StatelessWidget {
  const Carrot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisSize: MainAxisSize.min, // Row가 필요 이상으로 커지지 않도록 설정
            children: [
              Text('금호동3가',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              Icon(Icons.expand_more),
            ],
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
            IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0), // 이미지 모서리 둥글게
                child: Image.asset(
                  'pxfuel.jpg',
                  width: 180,
                  height:180,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 12), // 이미지와 텍스트 사이 간격
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '캐논 DSLR 100D (단렌즈, 충전기, 16GB SD 포함)',
                      maxLines: 2,
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 3),
                    Text(
                      '서울 금호동3가 · 10분 전',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    SizedBox(height: 7),
                    Text(
                      '250,000원',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 40),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        spacing: 2,
                        children: [
                          Icon(Icons.favorite_border,color: Colors.grey),
                          Text('3',style: TextStyle(fontSize: 20))
                        ]
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
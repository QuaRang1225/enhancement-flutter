import 'package:flutter/material.dart';

class Carrot extends StatelessWidget {
  final String title;
  const Carrot({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 17,
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
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$title "캐논 DSLR 100D (단렌즈, 충전기, 16GB SD 포함)',
                  maxLines: 2,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.black),
                ),
                SizedBox(height: 3),
                Text(
                  '서울 금호동3가 · 10분 전',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                SizedBox(height: 7),
                Text(
                  '250,000원',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.black),
                ),
                SizedBox(height: 40),
                Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    spacing: 2,
                    children: [
                      Icon(Icons.favorite_border,color: Colors.grey),
                      Text('3',style: TextStyle(fontSize: 20,color: Colors.black))
                    ]
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
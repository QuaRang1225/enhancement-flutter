import 'package:flutter/material.dart';

void main() { //앱 시작
  runApp(const MyApp());  //메인 페이지 입력
}


class MyApp extends StatelessWidget { //메인 페이지
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Center(
        child: Container(width: 50,height: 50,color: Colors.blue),
      )
    );
  }
}

import 'package:flutter/material.dart';

void main() { //앱 시작
  runApp(const MyApp());  //메인 페이지 입력
}


class MyApp extends StatelessWidget { //메인 페이지
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('앱임'),backgroundColor: Colors.blue),
        body: Align(
          alignment: Alignment.centerLeft,
          child: Container(
            width: double.infinity,height: 50,
            margin: EdgeInsets.fromLTRB(1, 2, 3, 4),
            decoration: BoxDecoration(
              color:Colors.yellow,
              border: Border.all(color: Colors.black),
            ),
          ),
        ),
      )
    );
  }
}

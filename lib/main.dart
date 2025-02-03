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
        body: Text('안녕'),
        bottomNavigationBar:BottomAppBar(
          child: SizedBox(
            height: 100,
            child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.call),
                  Icon(Icons.message),
                  Icon(Icons.contact_page)
                ]
            )
          ,)
        ),
      )
    );
  }
}

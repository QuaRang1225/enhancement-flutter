import 'package:flutter/material.dart';
import 'carrot.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Carrot(), // 분리한 파일을 사용
    );
  }
}
import 'package:flutter/material.dart';
import 'package:practice_flutter/navigation.dart';
import 'carrot.dart';
import 'flexible.dart';
import 'List.dart';
import 'GridView.dart';
import 'Alert.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavigationTestView() // 분리한 파일을 사용
    );
  }
}
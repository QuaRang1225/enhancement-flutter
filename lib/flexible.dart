import 'package:flutter/material.dart';


class Flexibls extends StatelessWidget {
  const Flexibls({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Row(
          children: [
            Expanded(child: Container(color: Colors.blue,),),
            Container(color: Colors.green,width: 100,),
            Flexible(flex: 1,child: Container(color: Colors.red,width: 200,),)
          ],
        ),
      ),
    );
  }
}



import 'package:flutter/material.dart';

class Gridviews extends StatelessWidget {

  const Gridviews({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text('상단바'),
        ),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 0,
              mainAxisSpacing: 0
          ),
          itemCount: 20,
          reverse: true,
          itemBuilder: (BuildContext con,int index){
            return ColorsGridView(color: (index * 10));
          }
        )
    );
  }
}

class ColorsGridView extends StatelessWidget {
  final int color;
  const ColorsGridView({super.key,required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(color: Color.fromRGBO(color, 0, 0, 1));
  }
}

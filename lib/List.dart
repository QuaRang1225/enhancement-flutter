import 'package:flutter/material.dart';
import 'carrot.dart';

class ListViews extends StatelessWidget {
  const ListViews({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: appBar(),),
      body: ListView.separated(
        itemCount: 20,
        reverse: true,
        separatorBuilder: (BuildContext ctx, int idx) {
          return Divider();
        },
        itemBuilder: (BuildContext con, int index){
          return GestureDetector(onTap: ()=>print("눌림"),child: Carrot(title: '${index+1}'));
        },
      )
    );
  }

  Widget appBar(){
    return AppBar(
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
    );
  }
}


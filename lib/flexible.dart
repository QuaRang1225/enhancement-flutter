import 'package:flutter/material.dart';


class Flexibls extends StatelessWidget {
  const Flexibls({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Stack(alignment: Alignment.center,children: [
          Row(
            children: [
              Expanded(child: Container(color: Colors.blue,),),
              Container(color: Colors.green,width: 100,),
              Flexible(flex: 1,child: Container(color: Colors.red),)
            ],
          ),
          Column(mainAxisAlignment: MainAxisAlignment.center,spacing: 20,children: [
            TextButton(onPressed: ()=>print("dad"),style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Colors.orange),), child: Text('data'),),
            GestureDetector(onTap: ()=>print("아무게"),child: CircleAvatar(),)
          ],)
        ]),
      ),
    );
  }
}


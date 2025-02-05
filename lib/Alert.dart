import 'package:flutter/material.dart';

class Alert extends StatelessWidget {
  List<Color> colors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.1,0.2,0.3,0.4,0.5,0.6,0.7]
        ),
      ),
      child: Center(
        child: TextButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext con){
                  return alert(context);
                }
            );
          },
          child: Text(
            "touch",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),
          ),
        ),
      ),
    );
  }
  AlertDialog alert(BuildContext context){
    return AlertDialog(
      title: Text("Hello"),
      content: Text("My name is.."),
      actions: [
        TextButton(
            onPressed: ()=>print("hero"),
            child: Text("hero")
        ),
        TextButton(
            onPressed: ()=>print("quarang"),
            child: Text("quarang")
        ),
        TextButton(
            onPressed: (){
              print("close");
              Navigator.of(context).pop();
            },
            child: Text("close")
        )
      ],
    );
  }
}

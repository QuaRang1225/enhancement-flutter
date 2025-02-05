import 'package:flutter/material.dart';

class Alert extends StatelessWidget {
  const Alert({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext con){
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
    );
  }
}

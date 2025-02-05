import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class NavigationTestView extends StatelessWidget {
  const NavigationTestView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Container(color: Colors.indigo),
          Center(
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(150, 70), // 너비 200, 높이 50
                ),
                onPressed: ()=> Navigator.push(context, MaterialPageRoute(
                    builder: (_) => SecondView())),
                child: Text(
                  "다음",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color:Colors.black
                  ),
                )),
          ),
        ],
      ),
    );
  }
}

class SecondView extends StatelessWidget {
  static String link = '5ZgXPy6cKmA';
  final YoutubePlayerController con = YoutubePlayerController(
    initialVideoId:link,
    flags:const YoutubePlayerFlags(autoPlay:false));

  SecondView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("안뇽"),
        leading: IconButton(
            onPressed: ()=> Navigator.pop(context),
            icon: Icon(Icons.chevron_left)
        ),
      ),
      body: YoutubePlayer(
          controller: con
      )
    );
  }
}



import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class JsonView extends StatelessWidget {
  const JsonView({super.key});

  @override
  Widget build(BuildContext context) {
    Future loadJson() async {
      final String response = await rootBundle.loadString("response.json");
      final data = await json.decode(response);
      return data;
    }

    Future pokemonInfo = loadJson();
    return Scaffold(
        appBar: AppBar(
          title: Text("포켓몬 정보"),
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: FutureBuilder(
              future: pokemonInfo,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                      itemCount:
                          snapshot.data["data"]["text_entries"]["text"].length,
                      itemBuilder: (_, index) {
                        return Row(
                          children: [
                            Container(
                              width: 100,
                              height: 70,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.2), // 배경색
                                borderRadius: BorderRadius.circular(10), // 모서리 둥글게
                              ),
                              margin: EdgeInsets.all(5),
                              child: Text(
                                "${snapshot.data["data"]["text_entries"]["version"][index]}",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(5),
                              child: Text(
                                "${snapshot.data["data"]["text_entries"]["text"][index]}",
                                maxLines: 3,
                              ),
                            ),
                          ],
                        );
                      });
                } else if (snapshot.hasError) {
                  return Center(
                    child: Text("${snapshot.error}"),
                  );
                } else {
                  return Center(
                      child: CircularProgressIndicator(
                    strokeWidth: 5,
                  ));
                }
              }),
        )
    );
  }
}

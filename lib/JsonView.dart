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
        body: FutureBuilder(
            future: pokemonInfo,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.separated(
                    itemCount:
                        snapshot.data["data"]["text_entries"]["text"].length,
                    separatorBuilder: (_, __) => Divider(),
                    itemBuilder: (_, index) {
                      return Text(
                          "${snapshot.data["data"]["text_entries"]["text"][index]}");
                    });
              } else if (snapshot.hasError) {
                return Center(
                  child: Text("${snapshot.error}"),
                );
              } else {
                return Center(
                    child: CircularProgressIndicator(
                  strokeWidth: 100,
                ));
              }
            }));
  }
}

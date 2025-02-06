import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class JsonView extends StatefulWidget {
  const JsonView({super.key});

  @override
  JsonViewState createState() => JsonViewState();
}

class JsonViewState extends State<JsonView> {
  late SharedPreferences pref;
  String entryTitle = "";
  String entryVersion = "";
  final TextEditingController con = TextEditingController();

  @override
  void initState() {
    super.initState();
    initPrefs();
  }

  // SharedPreferences 초기화 및 데이터 로드
  Future initPrefs() async {
    pref = await SharedPreferences.getInstance();
  }

  Future loadJson() async {
    final String response = await rootBundle.loadString("response.json");
    final data = await json.decode(response);
    return data;
  }

  void saveData(String version, String title) async {
    await pref.setString("version", version);
    await pref.setString("title", title);
  }

  void getData() {
    setState(() {
      entryVersion = pref.getString("version") ?? "";
      entryTitle = pref.getString("title") ?? "";
    });
  }

  @override
  Widget build(BuildContext context) {
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
              return Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: snapshot.data["data"]["text_entries"]["text"].length,
                      itemBuilder: (_, index) {
                        return Row(
                          children: [
                            Container(
                              width: 100,
                              height: 70,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              margin: EdgeInsets.all(5),
                              child: Text(
                                "${snapshot.data["data"]["text_entries"]["version"][index]}",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(5),
                                child: Text(
                                  "${snapshot.data["data"]["text_entries"]["text"][index]}",
                                  maxLines: 3,
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                saveData(
                                  snapshot.data["data"]["text_entries"]["version"][index],
                                  snapshot.data["data"]["text_entries"]["text"][index],
                                );
                              },
                              child: Text("저장"),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: getData,
                    child: Text("불러오기"),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Column(
                      children: [
                        Row(children: [
                          Container(
                            width:100,
                            alignment: Alignment.center,
                            child: Text("저장버전",style: TextStyle(fontWeight: FontWeight.bold),)
                          ),
                          Expanded(
                              child: Center(child: Text("저장 텍스트")),
                          )
                        ],
                        ),
                        Row(
                          children: [
                          Container(
                              width: 100,
                              height: 70,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius:BorderRadius.circular(10),
                                color: Colors.grey.withOpacity(0.2),
                              ),
                              child: Text(entryVersion)
                          ),
                          Expanded(
                            child: Container(
                                padding: EdgeInsets.only(left: 10),
                                height: 100,
                                alignment: Alignment.centerLeft,
                                child: Text(entryTitle)
                            )
                          )
                        ],
                        ),
                      ],
                    ),
                  )
                ],
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text("${snapshot.error}"),
              );
            } else {
              return Center(
                child: CircularProgressIndicator(strokeWidth: 5),
              );
            }
          },
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'header_background.dart';
import 'main_content.dart';
import 'list_content.dart';
import 'carousel_slider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SafeArea(
              child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(flex: 2, child: HeaderBackground()),
          Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(left: 10, top: 10),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://secure.gravatar.com/avatar/55627ecd096d881a801f7d88d494eaff'))),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Rifqi Eka Hardianto',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              )),
          Expanded(
              flex: 6,
              child: Container(
                  margin: EdgeInsets.only(top: 10, bottom: 20),
                  child: ExpansionTileSample())),
          Expanded(flex: 3, child: CarouselDemo())
        ],
      ))),
    );
  }
}

class ExpansionTileSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => EntryItem(data[index]),
      itemCount: data.length,
    );
  }
}

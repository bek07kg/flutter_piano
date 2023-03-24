import 'package:flutter/material.dart';
import 'package:flutter_piano/components/black_button.dart';
import 'package:flutter_piano/components/white_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "Piano",
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 2,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          WhiteButton(nameNote: 'do'),
                          WhiteButton(nameNote: 're'),
                          WhiteButton(nameNote: 'mi'),
                          WhiteButton(nameNote: 'fa'),
                          WhiteButton(nameNote: 'sol'),
                          WhiteButton(nameNote: 'lya'),
                          WhiteButton(nameNote: 'si'),
                        ],
                      ),
                      Positioned(
                        left: 40.0,
                        right: 0.0,
                        top: 0.0,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            BlackButton(nameNote: "do"),
                            BlackButton(nameNote: "re"),
                            BlackButton(visible: false, nameNote: "mi"),
                            BlackButton(nameNote: "fa"),
                            BlackButton(nameNote: "sol"),
                            BlackButton(nameNote: "lya"),
                          ],
                        ),
                      ),
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}

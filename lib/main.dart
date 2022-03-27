import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(GameApplication());
}

class GameApplication extends StatefulWidget {
  const GameApplication({Key? key}) : super(key: key);

  @override
  _GameApplicationState createState() => _GameApplicationState();
}

class _GameApplicationState extends State<GameApplication> {
  int top = 2;
  int bottom = 2;
  @override
  Widget build(BuildContext context) {
    print('log');
    return MaterialApp(
      theme: ThemeData(fontFamily: 'vazir'),
      home: Scaffold(
        appBar: AppBar(
          title: Text('سنگ   کاغذ    قیچی'),
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
        ),
        backgroundColor: Colors.deepOrange[600],
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image(
                image: AssetImage('images/$top.png'),
                height: 100.0,
              ),
              TextButton(
                style: TextButton.styleFrom(primary: Colors.white),
                onPressed: () {
                  setState(() {
                    top = Random().nextInt(3) + 1; //0-2-> 1 3
                    bottom = Random().nextInt(3) + 1;
                  });
                },
                child: Text(
                  'شروع بازی',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Image(
                image: AssetImage('images/$bottom.png'),
                height: 100.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int top = 2;
    int bottom = 1;
    return MaterialApp(
      theme: ThemeData(fontFamily: 'vazir'),
      home: Scaffold(
        appBar: AppBar(
          title: Text('سنگ   کاغذ    قیچی'),
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
        ),
        backgroundColor: Colors.deepOrange[600],
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image(
                  image: AssetImage('images/$top.png'),
                ),
                TextButton(
                  style: TextButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    top = 3;
                    bottom = 1;
                  },
                  child: Text(
                    'شروع بازی',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Image(
                  image: AssetImage('images/$bottom.png'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

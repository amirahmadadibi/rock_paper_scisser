import 'package:flutter/material.dart';

void main() {
  runApp(Application());
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
                  onPressed: () {},
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

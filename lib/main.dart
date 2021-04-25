import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LearnFlutter(),
    );
  }
}

class LearnFlutter extends StatefulWidget {
  @override
  _LearnFlutterState createState() => _LearnFlutterState();
}

class _LearnFlutterState extends State<LearnFlutter> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          brightness: Brightness.dark,
          title: Text('Media Query'),
          backgroundColor: Colors.indigo,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.pinkAccent,
                width: size.width * 0.8,
                height: size.height / 8,
              ),
              Container(
                color: Colors.indigo,
                width: size.width / 2,
                height: size.height / 8,
              ),
              Container(
                color: Colors.blueGrey,
                width: size.width / 3,
                height: size.height / 8,
              )
            ],
          ),
        ));
  }
}

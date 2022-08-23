import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: Kubiki());
  }
}

class Kubiki extends StatelessWidget {
  const Kubiki({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        title: const Text(
          'data',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            FirstBox(mainAxis: MainAxisAlignment.start),
            FirstBox(
              mainAxis: MainAxisAlignment.center,
            ),
            FirstBox(
              mainAxis: MainAxisAlignment.end,
            )
          ],
        ),
      ),
    );
  }
}

class FirstBox extends StatelessWidget {
  const FirstBox({Key? key, required this.mainAxis}) : super(key: key);
  final MainAxisAlignment mainAxis;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: mainAxis,
      children: [
        Container(
          alignment: Alignment.center,
          width: 70,
          height: 70,
          child: Text('1'),
          color: Colors.red,
        ),
        Container(
          alignment: Alignment.center,
          width: 90,
          height: 90,
          child: Text('2'),
          color: Colors.yellow,
        ),
        Container(
          alignment: Alignment.center,
          width: 110,
          height: 110,
          color: Colors.green,
          child: Text('3'),
        ),
      ],
    );
  }
}

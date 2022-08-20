import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'First Screen of My apl',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                FirstBox(),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FirstBox(),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FirstBox(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FirstBox extends StatefulWidget {
  const FirstBox({super.key});

  @override
  State<FirstBox> createState() => _FirstBoxState();
}

class _FirstBoxState extends State<FirstBox> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          child: Center(
            child: Text('1'),
          ),
          decoration: const BoxDecoration(
            color: Colors.red,
          ),
        ),
        Container(
          width: 70,
          height: 70,
          child: Center(
            child: Text('2'),
          ),
          decoration: const BoxDecoration(
            color: Colors.yellow,
          ),
        ),
        Container(
          width: 110,
          height: 110,
          child: Center(
            child: Text('3'),
          ),
          decoration: const BoxDecoration(
            color: Colors.green,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter card';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(_title),
          backgroundColor: Colors.black,
        ),
        body: const MyStatelessWidget(),
        backgroundColor: Colors.blueGrey[300],
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 100,
          backgroundImage: AssetImage('images/avatar.png'),
        ),
        Divider(height: 10, color: Colors.black, thickness: 5),
        Text(
          'Everton',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        Text(
          'Desenvolvimento de Sistemas',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        Divider(
          height: 10,
          color: Colors.black,
          thickness: 5,
        ),
        Image.asset('images/etec.jpg'),
      ],
    );
  }
}

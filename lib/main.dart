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
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey, //margin
        body: Container(
            color: Colors.blueGrey, //fundo do body
            margin: const EdgeInsets.all(10),
            child: Center(
              child: Column(
                children: <Widget>[
                  Card(
                    margin: const EdgeInsets.only(top: 50.0),
                    color: Colors.blue[100], //fundo do card
                    child: Container(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: const <Widget>[
                          Text('Aristóteles'),
                          Text(
                            'É fazendo que se aprende a fazer aquilo que se deve aprender a fazer.',
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}

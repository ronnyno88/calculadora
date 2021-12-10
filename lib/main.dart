import 'package:calculadora/global.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'button.dart';
import 'generatorButton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculadora',
      theme: ThemeData.dark(),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Observer(
              builder: (_) => Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: EdgeInsets.all(25),
                        alignment: Alignment.centerLeft,
                        child: Text(calculadora.entrada,
                            style: TextStyle(fontSize: 20)),
                      ),
                      Container(
                        padding: EdgeInsets.all(25),
                        alignment: Alignment.centerRight,
                        child: Text(calculadora.calculo,
                            style: TextStyle(fontSize: 50)),
                      ),
                    ]),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: GridView.builder(
                itemCount: calculadoraGrid.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (BuildContext context, int index) {
                  return calculadoraGrid[index];
                }),
          ),
        ],
      ),
    );
  }
}

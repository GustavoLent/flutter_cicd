import 'package:app/LALAPasswordValidation.dart';
import 'package:app/StartsUpperCasedTest/StartsUpperCasedTest.dart';
import 'package:flutter/material.dart';

class CamelCaseTest extends StatefulWidget {
  @override
  _CamelCaseTestState createState() => _CamelCaseTestState();
}

class _CamelCaseTestState extends State<CamelCaseTest> {
  int _counter = 0;
  bool validation = LALAPasswordValidation();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Camel Case Test"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            StartsUpperCasedTest(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

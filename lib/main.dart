import 'package:flutter/material.dart';
import 'package:smart_select/smart_select.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
// simple usage

  String value = 'flutter';
  List<S2Choice<String>> options = [
    S2Choice<String>(value: 'ion', title: 'Ionic'),
    S2Choice<String>(value: 'flu', title: 'Flutter'),
    S2Choice<String>(value: 'rea', title: 'React Native'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SmartSelect<String>.single(
          title: 'Frameworks',
          value: value,
          choiceItems: options,
          onChange: (state) => setState(() => value = state.value)),
    );
  }
}

import 'package:flutter/material.dart';

class ListDemoScreen extends StatefulWidget {
  static const routeName = '/listDemoScreen';
  @override
  State<StatefulWidget> createState() {
    return _ListDemoState();
  }
}

class _ListDemoState extends State<ListDemoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List demo'),
      ),
      body: Text('List demo'),
    );
  }
}

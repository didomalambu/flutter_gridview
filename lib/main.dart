import 'dart:collection';
import 'package:flutter/scheduler.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.red,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('GridView'),
      ),
      body: new GridView.count(
        crossAxisCount: 2,
        children: new List<Widget>.generate(8, (index) {
          return new GridTile(
            child: new Card(
                color: Colors.blueGrey,
                child: new Center(
                  child: new Text('Grid $index'),
                )
            ),
          );
        }),
      ),
    );
  }
}
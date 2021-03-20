//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'beranda.dart' as beranda;
import 'produklist.dart' as listproduk;

void main() {
  runApp(new MaterialApp(
    title: "tab Bar",
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    controller = new TabController(length: 2, vsync: this);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new TabBarView(
          controller: controller,
          children: <Widget>[
            new beranda.Beranda(),
            new listproduk.ProdukList(),
          ],
        ),
        bottomNavigationBar: new Material(
          color: Colors.blue,
          child: new TabBar(controller: controller, tabs: <Widget>[
            new Tab(icon: new Icon(Icons.home)),
            new Tab(icon: new Icon(Icons.list))
          ]),
        ));
  }
}

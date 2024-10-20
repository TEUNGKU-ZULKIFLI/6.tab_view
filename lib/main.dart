// Top Tab Bar View Flutter Gesture
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter 100 Days',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Jumlah tab
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(tabs: [
            Tab(icon: Icon(Icons.directions_railway)),
            Tab(icon: Icon(Icons.directions_subway)),
            Tab(icon: Icon(Icons.directions_bike)),
          ]),
          title: const Text("Tab Bar"),
        ),
        body: const TabBarView(children: [
          Icon(Icons.directions_railway),
          Icon(Icons.directions_subway),
          Icon(Icons.directions_bike),
        ]),
      ),
    );
  }
}

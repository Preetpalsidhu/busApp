//import 'package:bus_app/components/searchCard.dart';
import 'package:bus_app/components/searchCard.dart';
import 'package:bus_app/pages/bus.dart';
import 'package:bus_app/pages/setting.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Bus(),
    );
  }
}

/*
class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

   
  }
}
*/


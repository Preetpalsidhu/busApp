import 'package:bus_app/pages/setting.dart';
import 'package:flutter/material.dart';

import '../components/searchCard.dart';

class Bus extends StatefulWidget {
  const Bus({super.key});

  @override
  State<Bus> createState() => _BusState();
}

class _BusState extends State<Bus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar Demo'),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.add_alert),
              tooltip: 'Show Snackbar',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Setting()));
              }),
        ],
      ),
      body: ListView(
        children: [
          Container(
            color: Color.fromRGBO(247, 247, 247, 1.0),
            height: 180,
            child: Column(
              children: <Widget>[
                Padding(
                  padding:
                      EdgeInsets.only(left: 15, right: 15, bottom: 10, top: 15),
                  child: TextField(
                    obscureText: false,
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                      hintText: 'Starting Point',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    obscureText: false,
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                      hintText: 'Destination',
                    ),
                  ),
                ),
              ],
            ),
          ),
          SearchCard(),
          SearchCard(),
          SearchCard(),
          SearchCard(),
          SearchCard(),
          SearchCard(),
          SearchCard(),
          SearchCard(),
        ],
      ),
    );
  }
}

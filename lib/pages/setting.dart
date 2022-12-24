import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Setting'),
          actions: <Widget>[
            BackButton(onPressed: () {
              Navigator.pop(context);
            })
          ],
        ),
        body: Column(
          children: const [
            TextField(
              obscureText: false,
              style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(),
                hintText: 'Starting Point',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

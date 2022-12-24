// ignore: file_names
import 'package:flutter/material.dart';

class SearchCard extends StatelessWidget {
  SearchCard({super.key});
  var busName = "51 Thane";
  var cost = '30';
  var time = '7';
  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.all(15),
        child: Row(children: <Widget>[
          Column(
            children: <Widget>[
              Row(children: <Widget>[
                Column(
                  children: <Widget>[
                    const Icon(
                      Icons.directions_bus,
                      size: 50,
                    ),
                    Row(
                      children: const <Widget>[
                        Icon(
                          Icons.event_seat,
                          size: 15,
                          color: Colors.green,
                        ),
                        Icon(
                          Icons.event_seat,
                          size: 15,
                          color: Colors.grey,
                        ),
                        Icon(
                          Icons.event_seat,
                          size: 15,
                          color: Colors.red,
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      busName,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.location_on_sharp),
                        Text(time),
                      ],
                    )
                  ],
                ),
              ]),
            ],
          ),
          const Icon(Icons.currency_rupee),
          Text(
            cost,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          ),
        ] //)
            ));
  }
}

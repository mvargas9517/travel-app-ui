import 'package:flutter/material.dart';
import 'model/card.dart';


class LocationPage extends StatefulWidget {
  final Location location;

  LocationPage({this.location});

  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      
    );
  }
}
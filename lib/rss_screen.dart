import 'package:calculator_project/calculator.dart';
import 'package:flutter/material.dart';
//import 'rss_service.dart';
//import 'package:intl/intl.dart';


class RSSScreen extends StatelessWidget {
  const RSSScreen({Key? key}) : super(key: key);

  get onPressed => null;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
          iconSize: 30,
          onPressed: () =>
              Navigator.pop(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const Calculator(),
                ),
              ),
        ),
        title: const Text("RSS"),
        backgroundColor: Colors.orange,
        elevation: 0.0,
        centerTitle: true,
      ),
    );
  }
}
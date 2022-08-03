import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:calculator_project/models/parser.dart';
import 'package:webfeed/webfeed.dart';
import 'dart:async';
import 'package:calculator_project/widgets/chargement.dart';
import 'package:calculator_project/widgets/list.dart';
import 'grid.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late RssFeed? feed = null;

  @override
  void initState() {
    super.initState();
    parse();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RSS",
        ),
        centerTitle: true,
        elevation: 10,
        backgroundColor: Colors.orange,
      ),
      body: choixDuBody(),
    );
  }

  Widget? choixDuBody() {
    // ignore: unnecessary_null_comparison
    if (feed == null) {
      return Chargement();
    } else {
      Orientation orientation = MediaQuery.of(context).orientation;
      if (orientation == Orientation.portrait) {
        return list(feed!);
      } else {
        return Grid(feed);
      }
    }
    return null;
  }

  Future<void> parse() async {
    RssFeed? recu = await Parser().chagerRsss();
    // ignore: unnecessary_null_comparison
    if (recu != null) {
      setState(() {
        feed = recu;
        for (var feedItem in feed!.items!) {
          RssItem item = feedItem;
            if (kDebugMode) {
              print(item.title);
            }
            if (kDebugMode) {
              print(item.enclosure?.url);
            }
        }
      });
    }
  }
}

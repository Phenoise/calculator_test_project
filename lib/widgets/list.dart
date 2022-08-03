import 'package:calculator_project/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:calculator_project/models/parser.dart';
import 'package:webfeed/domain/media/content.dart';
import 'package:webfeed/webfeed.dart';

class list extends StatefulWidget {
  late RssFeed? feed;

  list(this.feed, {Key? key}) : super(key: key);
  @override
  _list createState() => _list();
}

class _list extends State<list> {
  @override
  Widget build(BuildContext context) {
    final waist = MediaQuery.of(context).size.width / 2.5;
    return ListView.builder(
      itemCount: widget.feed!.items?.length,
      itemBuilder: (context, i) {
        RssItem? item = widget.feed?.items![i];
        return Container(
          padding: const EdgeInsets.all((10.0)),
          child: Card(
            elevation: 10.0,
            child: InkWell( 
              onTap: (){
              },
              child:Column(
                children: [
                padding(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                      elevation: 7.5,
                      child: SizedBox(
                        width: waist,
                        child: Image.network(
                          "${item?.enclosure?.url}",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    padding(),
                    SizedBox(
                      width: waist,
                      child: textCustom("${item?.title}"),
                    )
                  ],
                ),
                ]
              ),
              
            ),
          ),
        );
      },
    );
  }

  Padding padding(){
    return const Padding(padding: EdgeInsets.only(top: 10.0));
  }
}

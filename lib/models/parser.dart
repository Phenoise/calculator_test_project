import 'package:flutter/foundation.dart';
import 'package:webfeed/webfeed.dart';
import 'package:http/http.dart' as http;
import 'dart:core';

class Parser{

  final url="https://www.nasa.gov/rss/dyn/lg_image_of_the_day.rss";
  Future  <RssFeed?> chagerRsss() async {
    final client=http.Client();
    final response=await client.get(Uri.parse(url));
    if(response.statusCode==200){
      final feed=RssFeed.parse(response.body);
      return feed;
    }else{
      if (kDebugMode) {
        print("Loading error.. ${response.statusCode}");
      }
      return  null;
    }
  }
}
import 'package:flutter/material.dart';
import 'package:calculator_project/widgets/text.dart';

class Chargement extends StatelessWidget{

  @override 
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: textCustom("Loading...",
      fontStyle: FontStyle.italic,
      fontSize: 25.0,
      ),
    );
  }
}
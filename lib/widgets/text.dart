import 'package:flutter/material.dart';

class textCustom extends Text{
  textCustom(String data,
  {Key? key, textAlign = TextAlign.center,
  color = Colors.black,fontSize = 15.0 ,
  fontStyle = FontStyle.normal}):
  
  super(key: key, 
    data,
    textAlign: textAlign,
    style: TextStyle(
      color: color, 
      fontSize: fontSize, 
      fontStyle: fontStyle
    )
  );
}
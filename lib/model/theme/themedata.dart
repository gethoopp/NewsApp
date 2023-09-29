import 'package:flutter/material.dart';

enum apptheme { light, dark }



final appthemeData = {
  apptheme.light : ThemeData(
       primaryColor: Colors.white,
       focusColor: Colors.redAccent,
       textTheme: const TextTheme(
         bodyLarge: TextStyle(
           color: Colors.black
         )
       )
  ),


  apptheme.dark : ThemeData(
        primaryColor: Colors.black,
        focusColor: Colors.redAccent,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            color: Colors.white
          )
        )
  )



};
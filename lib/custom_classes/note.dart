import 'package:flutter/material.dart';

class NoteData {
  String? title;
  String? date;
  String? content;
  String? color;

  NoteData({this.title, this.date, this.content, this.color});

  getColorFromName(String color) {
    if (color == "green") {
      return Colors.green[900];
    } else if (color == "yellow") {
      return Colors.yellow[700];
    } else if (color == "blue") {
      return Colors.blue[900];
    } else if (color == "blueaccent") {
      return Colors.blue[900];
    } else if(color == "pink") {
      return Colors.pink;
    }
  }
}

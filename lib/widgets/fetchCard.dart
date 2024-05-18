import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget dataCard(String data, BuildContext context) {
  String space = "               ";
  List<String> list =
      data.split(r'\n').where((line) => line.isNotEmpty).toList();
  String showVal = "";
  if (data == "bool_of_active            500") {
    showVal = "Suggested Activity Level for tomorrow: High";
  } else if (data == "bool_of_active            0") {
    showVal = "Suggested Activity Level for tomorrow: Low";
  }
  return Card(
    color: Colors.blueGrey[100],
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40.0),
      child: Text(
        showVal == "" ? data : showVal,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 36.0,
            color: Colors.blueGrey[900],
            fontFamily: GoogleFonts.lato().fontFamily),
      ),
    ),
  );
}

import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xff62FCD7);

const kNotesBox = 'notes_box';
List<Color> kColors = const [
  Color(0xffD3D5D4),
  Color(0xffA2C5AC),
  Color(0xff9DB5B2),
  Color(0xff878E99),
  Color(0xff7F6A93),
];

void showSnackBar(BuildContext context,
    {required String message, Color? color}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(
      message,
      style: const TextStyle(color: Colors.black),
    ),
    duration: Durations.long4,
  ));
}

import 'package:flutter/material.dart';

class Notes {
  final String title, body, date, time;
  final bool isChecked;
  final Color? tagColor;

  Notes(
      {required this.title,
      required this.body,
      required this.date,
      required this.time,
      required this.isChecked,
      required this.tagColor});
}

final List<Notes> notes = [
  Notes(
    title: "Inspiration for our new home",
    body: emailDemoText,
    isChecked: false,
    tagColor: null,
    date: "01.02.2023",
    time: "15:32",
  ),
  Notes(
    title: "Apple",
    body: emailDemoText,
    isChecked: false,
    tagColor: null,
    date: "01.02.2023",
    time: "14:09",
  ),
  Notes(
    title: "Marvin Kiehn",
    body: emailDemoText,
    isChecked: false,
    tagColor: null,
    date: "15.01.2023",
    time: "14:09",
  ),
  Notes(
    title: "Domenic Bosco",
    body: emailDemoText,
    isChecked: true,
    tagColor: Colors.red,
    date: "13.01.2023",
    time: "01:09",
  ),
  Notes(
    title: "Elenor Bauch",
    body: emailDemoText,
    isChecked: false,
    tagColor: Colors.green,
    date: "01.01.2023",
    time: "9:58",
  ),
];

String emailDemoText =
    "Corporis illo provident. Sunt omnis neque et aperiam. Nemo ut dolorum fugit eum sed. Corporis illo provident. Sunt omnis neque et aperiam. Nemo ut dolorum fugit eum sed. Corporis illo provident. Sunt omnis neque et aperiam. Nemo ut dolorum fugit eum sed";

import 'package:flutter/material.dart';
import 'package:flutter_notes/app/models/notes.dart';

class EmailCard extends StatelessWidget {
  final Notes note;

  const EmailCard({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    List<String> date_split = note.date.split('.');
    String date_day = date_split.first;
    String date_month = date_split[1];
    String date_year = date_split[2];
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Column(
                children: [
                  Text(
                    date_day,
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(date_month + "/" + date_year),
                  // Text(note.time),
                ],
              ),
              title: Text(
                note.title,
                maxLines: 1,
                overflow: TextOverflow.clip,
              ),
              subtitle: Text(
                note.body,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

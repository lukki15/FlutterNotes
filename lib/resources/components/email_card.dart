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
    // String date_year = date_split[2];
    return Center(
      child: Card(
        child: InkWell(
          onTap: () {},
          child: ListTile(
            leading: CircleAvatar(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(date_day),
                  Text(
                    date_month,
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              ),
            ),
            title: Text(note.title),
            subtitle: Text(
              note.body,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ),
    );
  }
}

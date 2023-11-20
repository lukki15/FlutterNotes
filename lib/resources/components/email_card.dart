import 'package:flutter/material.dart';
import 'package:flutter_app/app/models/notes.dart';

class EmailCard extends StatelessWidget {
  final Notes note;

  const EmailCard({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.check_box_outline_blank),
              title: Text(note.title),
              subtitle: Text(
                note.body,
                overflow: TextOverflow.fade,
                maxLines: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

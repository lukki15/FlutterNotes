import 'package:flutter/material.dart';

import 'package:flutter_notes/config/constants.dart';

class Tags extends StatelessWidget {
  const Tags({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(Icons.keyboard_arrow_down, size: 16),
            SizedBox(width: kDefaultPadding / 4),
            Icon(Icons.bookmark, size: 20),
            SizedBox(width: kDefaultPadding / 2),
            Text("Tags"),
            Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add,
                size: 20,
              ),
            )
          ],
        ),
        SizedBox(height: kDefaultPadding / 2),
        _SingleTag(color: Color(0xFF23CF91), title: "Design"),
        _SingleTag(color: Color(0xFF3A6FF7), title: "Work"),
        _SingleTag(color: Color(0xFFF3CF50), title: "Friends"),
        _SingleTag(color: Color(0xFF8338E1), title: "Family"),
      ],
    );
  }
}

class _SingleTag extends StatelessWidget {
  const _SingleTag({required this.color, required this.title});

  final Color color;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.fromLTRB(kDefaultPadding * 1.5, 10, 0, 10),
        child: Row(
          children: [
            Icon(
              Icons.bookmark,
              size: 18,
              color: color,
            ),
            SizedBox(width: kDefaultPadding / 2),
            Text(title),
          ],
        ),
      ),
    );
  }
}

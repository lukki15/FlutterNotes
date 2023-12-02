import 'package:flutter/material.dart';

import 'package:flutter_notes/config/constants.dart';
import 'package:flutter_notes/resources/widgets/responsive.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Row(
        children: [
          // We need this back button on mobile only
          if (Responsive.isMobile(context)) BackButton(),
          // We don't need print option on mobile
          if (Responsive.isDesktop(context))
            IconButton(
              icon: Icon(Icons.print, size: 24),
              onPressed: () {},
            ),
          Spacer(),
          IconButton(
            icon: Icon(Icons.delete, size: 24),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.share, size: 24),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.bookmark, size: 24),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

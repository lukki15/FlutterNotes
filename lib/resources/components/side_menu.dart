import 'package:flutter/material.dart';
import 'package:flutter_notes/resources/widgets/responsive.dart';
import 'package:flutter_notes/config/constants.dart';
import 'side_menu_item.dart';
import 'tags.dart';

import 'package:flutter/foundation.dart' show kIsWeb;

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        padding: EdgeInsets.only(top: kIsWeb ? kDefaultPadding : 0),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              children: [
                Icon(Icons.note, size: 46),
                SizedBox(height: kDefaultPadding),

                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.edit),
                  label: Text("New Message"),
                ),
                SizedBox(height: kDefaultPadding),
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.download),
                  label: Text("Get Messages"),
                ),
                SizedBox(height: kDefaultPadding * 2),

                // Menu Items
                SideMenuItem(
                  press: () {},
                  title: "Inbox",
                  iconSrc: Icons.inbox,
                  isActive: true,
                ),
                SideMenuItem(
                  press: () {},
                  title: "Sent",
                  iconSrc: Icons.send,
                  isActive: false,
                ),
                SideMenuItem(
                  press: () {},
                  title: "Drafts",
                  iconSrc: Icons.description,
                  isActive: false,
                ),
                SideMenuItem(
                  press: () {},
                  title: "Deleted",
                  iconSrc: Icons.delete,
                  isActive: false,
                  showBorder: false,
                ),

                SizedBox(height: kDefaultPadding * 2),
                // Tags
                Tags(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

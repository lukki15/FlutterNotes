import 'package:nylo_framework/nylo_framework.dart';
import 'package:flutter/material.dart';
import '/resources/widgets/responsive.dart';

class HomePage extends NyPage {
  static String path = '/home';

  @override
  init() async {}

  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: _Mobile(), tablet: _Tablet(), desktop: _Desktop());
  }
}

class _Mobile extends StatelessWidget {
  const _Mobile({super.key});

  @override
  Widget build(BuildContext context) {
    return EmailScreen();
  }
}

class _Tablet extends StatelessWidget {
  const _Tablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        flex: 6,
        child: ListOfEmails(),
      ),
      Expanded(
        flex: 9,
        child: EmailScreen(),
      )
    ]);
  }
}

class _Desktop extends StatelessWidget {
  const _Desktop({super.key});

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Row(children: [
      Expanded(
        flex: _size.width > 1340 ? 2 : 4,
        child: SideMenu(),
      ),
      Expanded(
        flex: _size.width > 1340 ? 3 : 5,
        child: ListOfEmails(),
      ),
      Expanded(
        flex: _size.width > 1340 ? 8 : 10,
        child: EmailScreen(),
      )
    ]);
  }
}

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class ListOfEmails extends StatelessWidget {
  const ListOfEmails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class EmailScreen extends StatelessWidget {
  const EmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

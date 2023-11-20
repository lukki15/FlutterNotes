import 'package:flutter_app/resources/components/list_of_notes.dart';
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
    return ListOfNotes();
  }
}

class _Tablet extends StatelessWidget {
  const _Tablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        flex: 6,
        child: ListOfNotes(),
      ),
      Expanded(
        flex: 9,
        child: _EmailScreen(),
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
        child: _SideMenu(),
      ),
      Expanded(
        flex: _size.width > 1340 ? 3 : 5,
        child: ListOfNotes(),
      ),
      Expanded(
        flex: _size.width > 1340 ? 8 : 10,
        child: _EmailScreen(),
      )
    ]);
  }
}

class _SideMenu extends StatelessWidget {
  const _SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class _EmailScreen extends StatelessWidget {
  const _EmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

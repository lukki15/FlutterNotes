import 'package:nylo_framework/nylo_framework.dart';
import 'package:flutter/material.dart';
import '/resources/widgets/logo_widget.dart';
import '/resources/widgets/safearea_widget.dart';

class HomePage extends NyPage {
  static String path = '/home';

  @override
  init() async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello World".tr()),
        centerTitle: true,
      ),
      body: SafeAreaWidget(
        child: Center(child: Logo()),
      ),
    );
  }
}

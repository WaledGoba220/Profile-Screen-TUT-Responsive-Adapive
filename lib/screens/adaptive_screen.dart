import 'package:flutter/material.dart';
import 'dart:io' show Platform;

class AdaptiveScreen extends StatelessWidget {
  const AdaptiveScreen({Key? key}) : super(key: key);

  Widget widgetTitle() {
    return Platform.isAndroid
        ? const Text("Android App")
        : const Text("IOS App");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: widgetTitle(),
      ),
    );
  }
}

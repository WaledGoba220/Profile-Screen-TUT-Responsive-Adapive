import 'package:flutter/material.dart';

class LandScapeOrintationScreen extends StatelessWidget {
  const LandScapeOrintationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final orientationDevice = MediaQuery.of(context).orientation;
    print(orientationDevice);
    return Scaffold(
      appBar: AppBar(),
      body: orientationDevice == Orientation.portrait
          ? const Center(child: Text("Portrait"))
          : const Center(child: Text("LandScape")),
    );
  }
}

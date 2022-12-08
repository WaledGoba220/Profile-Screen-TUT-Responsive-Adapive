import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: LayoutBuilder(builder: (context, constraints) {
        final heightScreen = constraints.maxHeight;
        final widthScreen = constraints.maxWidth;

        print(heightScreen);
        print(widthScreen);

        return Container();
      }),
    );
  }
}

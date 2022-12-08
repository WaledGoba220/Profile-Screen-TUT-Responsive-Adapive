import 'package:flutter/material.dart';

class LandScapeModeScreen extends StatelessWidget {
  const LandScapeModeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: LayoutBuilder(
        builder: (context,constraints){
          print(constraints.maxWidth);
          print(constraints.maxHeight);

          if(constraints.maxWidth < 400){
            return const Center(
              child: Text("Portrait Mode"),
            );
          }else{
            return const Center(
              child: Text("LandScape Mode"),
            );
          }
        },
      ),
    );
  }
}

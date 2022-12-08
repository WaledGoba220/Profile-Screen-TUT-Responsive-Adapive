import 'package:flutter/material.dart';

class LayoutMediaScreen extends StatelessWidget {
  const LayoutMediaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    // print(screenHeight);
    // print(screenWidth);

    return Scaffold(
      // appBar: AppBar(),
      body: Column(
        children: [
          Container(
            height: 250,
            color: Colors.red,
          ),

          Container(
            height: 300,
            color: Colors.red,
          ),


          Container(
            height: 272,
            color: Colors.red,
          ),

        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'dart:io' show Platform;
import 'package:profile_flutter/screens/adaptive_screen.dart';
import 'package:profile_flutter/screens/land_scape_mode_screen.dart';
import 'package:profile_flutter/screens/land_scape_orintation_screen.dart';
import 'package:profile_flutter/screens/layout_builder_screen.dart';
import 'package:profile_flutter/screens/layout_media_screen.dart';
import 'package:profile_flutter/screens/profile_Screen.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();

  // First Method of Responsive screen lock Landscape 1)

  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitDown,
  //   DeviceOrientation.portraitUp,
  // ]);


  // if(Platform.isAndroid){
  //   runApp(const AndroidVersion());
  // }

  runApp(const MyApp());
}


// class AndroidVersion extends StatelessWidget {
//   const AndroidVersion({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       debugShowMaterialGrid: false,
//       // title: ,
//       // home: ,
//     );
//   }
// }


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final os = Platform.operatingSystem;
    print("Operating System $os");
    return const MaterialApp(
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      title: "Profile screen",
      home: AdaptiveScreen(),
    );
  }
}

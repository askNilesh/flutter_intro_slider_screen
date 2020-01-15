import 'package:flutter/material.dart';
import 'package:flutter_intro_screen/intro_view.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IntroView(
      pages: <Widget>[
        FlutterLogo(
          colors: Colors.blue,
        ),
        FlutterLogo(
          colors: Colors.red,
        ),
        FlutterLogo(
          colors: Colors.purple,
        ),
      ],
      onIntroCompleted: () {
        print("Slider Into is Completed");
      },
    );
  }
}

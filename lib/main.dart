import 'package:flutter/material.dart';
import 'package:project/screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context){
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      scaffoldBackgroundColor: Colors.white,
    ),
    home: WelcomeScrreen(),
  );
}
}
 
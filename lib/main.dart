import 'package:chu_hai_long_flutter_10/src/pages/splash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fluuter Practice App',
      theme: ThemeData(
        // Use the green theme for Material widgets.
        primarySwatch: Colors.green,
      ),
      darkTheme: ThemeData.dark(),
      builder: (context, child) {
        return CupertinoTheme(
          // Instead of letting Cupertino widgets auto-adapt to the Material
          // theme (which is green), this app will use a different theme
          // for Cupertino (which is blue by default).
          data: const CupertinoThemeData(),
          child: Material(child: child),
        );
      },
      home: SplashScreen(),
    );
  }
}

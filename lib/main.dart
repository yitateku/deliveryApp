import 'package:flutter/material.dart';
import 'package:transport_app/SignIn/signIn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        dividerTheme: DividerThemeData(
          space: 5,
          thickness: 1,
          indent: 20,
          endIndent: 0,
          color: Colors.black,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: SignIn(),
    );
  }
}

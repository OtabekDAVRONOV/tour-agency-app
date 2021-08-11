import 'package:examination/models/introduction.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme:
          ThemeData(brightness: Brightness.dark, primarySwatch: Colors.amber),

      theme: ThemeData(
        fontFamily: 'Gilroy',
        primarySwatch: Colors.amber,
        brightness: Brightness.light,
      ),
      debugShowCheckedModeBanner: false,
      title: 'Examination 2.0',
      home: const Introduction(),
      // home: HomePage(),
      // home: const HomePageDemo(),
    );
  }
}

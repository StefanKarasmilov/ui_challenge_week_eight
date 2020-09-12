import 'package:flutter/material.dart';
import 'package:ui_challenge_week_eight/pages/detail_page.dart';
import 'package:ui_challenge_week_eight/pages/home_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animals App',
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        'detail': (context) => DetailPage()
      },
    );
  }
}
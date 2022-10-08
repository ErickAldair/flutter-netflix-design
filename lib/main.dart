import 'package:flutter/material.dart';
import 'package:flutter_application_netflix/screens/home_page.dart';

void main() {
  runApp( const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'home',
      routes: {

        'home' : (_) => const HomePage()

      },
    );
  }
}
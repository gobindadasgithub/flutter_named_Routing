import 'package:flutter/material.dart';
import 'package:navigration/pages/home_pages.dart';
import 'package:navigration/pages/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
     initialRoute: HomePages.routName,
      routes: {
        HomePages.routName:(context)=>HomePages(),
       SecondPage.routName:(context)=>SecondPage(),
      },

    );
  }
}

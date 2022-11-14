import 'package:flutter/material.dart';
import 'package:navigration/pages/second_page.dart';

class HomePages extends StatefulWidget {
  static const String routName='/';
  const HomePages({Key? key}) : super(key: key);

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  double slide_value=50.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigration Example'),
      ),
      body: Center(
        child: Column(
          children: [
            Slider(
              min: 0,
            max: 100,
                divisions: 100,
                label: slide_value.round().toString(),

                value: slide_value, onChanged: (value){
              setState(() {
                slide_value=value;
              });
            }),
            Text('${slide_value.round()}',style: TextStyle(fontSize: 30),),
            ElevatedButton(
              onPressed: () =>Navigator.pushNamed(context,
                  SecondPage.routName,
                  arguments: 'Hello world'),
              child: const Text("Next"),
            ),
          ],
        ),
      ),
    );
  }
}

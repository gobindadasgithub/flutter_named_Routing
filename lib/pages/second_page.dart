import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  static const String routName='/Second';
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  late String msg;
  @override
  Widget build(BuildContext context) {
    print('build called');
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Text(msg),
      ),
    );
  }
  @override
  void initState() {

    print('initState called');
    super.initState();

  }
  @override
  void didChangeDependencies() {
    msg=ModalRoute.of(context)!.settings.arguments as String;
    print('didchangeDependenci called');
    super.didChangeDependencies();

  }
  @override
  void dispose() {
    print('dispose called');
    super.dispose();
  }
}

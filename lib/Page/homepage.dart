import 'package:flutter/material.dart';

import '../Components/widget1.dart';
import '../Components/widget2.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String yazi = "";

  void changeText(String text) {
    setState(() {
      yazi = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider Learn"),
        centerTitle: true,
      ),
      body: Row(
        children: [
          Expanded(
            child: Widget1(
              yazi: yazi,
            ),
          ),
          Expanded(
            child: Widget2(
              callback: changeText,
            ),
          )
        ],
      ),
    );
  }
}

// ignore: camel_case_types

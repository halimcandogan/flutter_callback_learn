// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_callback_learn/Components/textcomponent.dart';

class Widget1 extends StatelessWidget {
  const Widget1({
    Key? key,
    required this.yazi,
  }) : super(key: key);
  final String yazi;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      color: Colors.blue,
      child: Column(
        children: [
          const TextComponent(title: "Widget 1", weight: FontWeight.bold),
          const TextComponent(
              title: "Yazdığınız Metin :", weight: FontWeight.normal),
          TextComponent(title: yazi, weight: FontWeight.normal)
        ],
      ),
    );
  }
}

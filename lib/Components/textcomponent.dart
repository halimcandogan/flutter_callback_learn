// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TextComponent extends StatelessWidget {
  const TextComponent({
    Key? key,
    required this.title,
    required this.weight,
  }) : super(key: key);
  final String title;
  final FontWeight weight;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontWeight: weight, fontSize: 20),
    );
  }
}

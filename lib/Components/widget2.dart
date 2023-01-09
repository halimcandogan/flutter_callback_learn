// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import 'package:flutter_callback_learn/Components/textcomponent.dart';

class Widget2 extends StatelessWidget {
  const Widget2({
    Key? key,
    required this.callback,
  }) : super(key: key);
  final Function callback;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      color: Colors.red,
      child: Column(
        children: [
          const TextComponent(title: 'Widget 2', weight: FontWeight.bold),
          WidgetA(
            callback: callback,
          ),
        ],
      ),
    );
  }
}

class WidgetA extends StatelessWidget {
  const WidgetA({
    Key? key,
    required this.callback,
  }) : super(key: key);
  final Function callback;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          const TextComponent(title: 'Widget A', weight: FontWeight.bold),
          WidgetB(
            callback: callback,
          ),
        ],
      ),
    );
  }
}

class WidgetB extends StatelessWidget {
  const WidgetB({
    Key? key,
    required this.callback,
  }) : super(key: key);
  final Function callback;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellowAccent,
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          const TextComponent(title: 'Widget B', weight: FontWeight.bold),
          const TextComponent(
              title: 'Metin Yazınız :', weight: FontWeight.normal),
          TextField(
            maxLines: 2,
            onChanged: (input) {
              callback(input);
            },
          )
        ],
      ),
    );
  }
}

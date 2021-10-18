import 'package:flutter/material.dart';
import 'item.dart';
import 'item_list.dart';
import 'text_input_widget.dart';

class AppHomePage extends StatefulWidget {
  @override
  _AppHomePageState createState() => _AppHomePageState();
}

class _AppHomePageState extends State<AppHomePage> {
  List<Item> items = [];

  void newPost(String text) {
    setState(() {
      items.add(Item(text, '12th Oct 2021'));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('To-do App')),
        body: Column(children: <Widget>[
          Expanded(child: ItemList(items)),
          TextInputWidget(
            newPost,
          )
        ]));
  }
}

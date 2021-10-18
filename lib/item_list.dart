import 'package:flutter/material.dart';
import 'item.dart';

class ItemList extends StatefulWidget {
  final List<Item> listItems;

  ItemList(this.listItems);

  @override
  _ItemListState createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {
  void complete(Function callBack) {
    setState(() {
      callBack();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.listItems.length,
      itemBuilder: (context, index) {
        var post = widget.listItems[index];
        return Card(
            child: Row(
          children: <Widget>[
            Expanded(
                child: ListTile(
              title: Text(post.content),
              tileColor:
                  post.completed ? Colors.green.shade50 : Colors.red.shade50,
              subtitle: Text(post.date),
            )),
            Row(children: <Widget>[
              IconButton(
                  icon: const Icon(Icons.check_box),
                  onPressed: () => complete(post.likePost),
                  color: post.completed ? Colors.green : Colors.black),
            ])
          ],
        ));
      },
    );
  }
}

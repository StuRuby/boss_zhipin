import 'package:flutter/material.dart';

var items = new List<String>.generate(500, (index) => 'Item $index');

class ChatList extends StatefulWidget {
  @override
  _ChatList createState() => new _ChatList();
}

class _ChatList extends State<ChatList> {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      // 列表长度
      itemCount: items.length,
      // 列表项构造器
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.phone),
          title: Text('${items[index]}'),
        );
      },
    );
  }
}

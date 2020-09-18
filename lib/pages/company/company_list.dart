import 'package:flutter/material.dart';

var items = new List<String>.generate(500, (index) => 'Item $index');

class CompanyList extends StatefulWidget {
  @override
  _CompanyList createState() => new _CompanyList();
}

class _CompanyList extends State<CompanyList> {
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

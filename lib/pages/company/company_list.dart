import 'package:flutter/material.dart';

import './company_card_item.dart';

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
        return CompanyCardItem();
      },
    );
  }
}

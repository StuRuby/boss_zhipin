import 'package:flutter/material.dart';

import 'package:boss_zhipin/pages/job/job_item.dart';

var items = new List<String>.generate(500, (index) => 'Item $index');

class JobList extends StatefulWidget {
  @override
  _JobList createState() => new _JobList();
}

class _JobList extends State<JobList> {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      // 列表长度
      itemCount: items.length,
      // 列表项构造器
      itemBuilder: (context, index) {
        return new JobItem();
      },
    );
  }
}

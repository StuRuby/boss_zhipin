import 'package:flutter/material.dart';

import 'package:boss_zhipin/widgets/sliver_job_detail_header.dart';

class JobDetail extends StatefulWidget {
  @override
  _JobDetail createState() => new _JobDetail();
}

class _JobDetail extends State<JobDetail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverPersistentHeader(
              pinned: true,
              delegate: SliverJobDetailHeader(
                title: '高级web前端工程师（急招）',
                paddingTop: MediaQuery.of(context).padding.top,
                expandedHeight: 200,
                collapsedHeight: 40,
              ),
            ),
            SliverFillRemaining(child: Text('1111'))
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:boss_zhipin/models/job.dart';
import 'package:boss_zhipin/widgets/sliver_job_detail_header.dart';

class JobDetail extends StatefulWidget {
  JobDetail({Key key, this.job}) : super(key: key);
  final Job job;

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
                job: widget.job,
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

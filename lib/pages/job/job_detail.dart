import 'package:boss_zhipin/widgets/job_detail_content.dart';
import 'package:flutter/material.dart';

import 'package:boss_zhipin/models/job.dart';
import 'package:boss_zhipin/widgets/sliver_job_detail_header.dart';
import 'package:boss_zhipin/widgets/job_publisher_intro.dart';

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
                expandedHeight: 150,
                collapsedHeight: 40,
              ),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) => Row(
                          children: <Widget>[
                            Expanded(
                              child: JobDetailContent(),
                              flex: 1,
                            ),
                          ],
                        ),
                    childCount: 2)),
          ],
        ),
      ),
    );
  }
}

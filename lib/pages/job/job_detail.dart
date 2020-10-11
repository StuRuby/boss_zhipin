import 'package:flutter/material.dart';

import 'package:boss_zhipin/widgets/job_detail_content.dart';
import 'package:boss_zhipin/widgets/company_desc_intro.dart';
import 'package:boss_zhipin/models/job.dart';
import 'package:boss_zhipin/widgets/sliver_job_detail_header.dart';
import 'package:boss_zhipin/widgets/job_publisher_intro.dart';
import 'package:boss_zhipin/widgets/map.dart';

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
                              child: Column(
                                children: [
                                  JobPublisherIntro(),
                                  JobDetailContent(
                                    job: widget.job,
                                  ),
                                  CompanyDescIntro(),
                                  new Map(),
                                ],
                              ),
                              flex: 1,
                            ),
                          ],
                        ),
                    childCount: 1)),
          ],
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(
            left: 24.0,
            right: 24.0,
            top: 8.0,
            bottom: 8.0,
          ),
          child: RaisedButton(
            color: new Color.fromRGBO(17, 164, 160, 1),
            textColor: Colors.white,
            child: Text('立即沟通'),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}

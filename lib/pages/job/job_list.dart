import 'package:boss_zhipin/services/job_service.dart';
import 'package:flutter/material.dart';

import 'package:boss_zhipin/models/job.dart';
import 'package:boss_zhipin/pages/job/job_item.dart';

var items = new List<String>.generate(500, (index) => 'Item $index');

class JobList extends StatefulWidget {
  @override
  _JobList createState() => new _JobList();
}

class _JobList extends State<JobList> {
  List<Job> _jobList = new List<Job>();

  @override
  void initState() {
    super.initState();
    JobService.getJobData().then((resp) {
      setState(() {
        _jobList = resp;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      // 列表长度
      itemCount: _jobList.length,
      // 列表项构造器
      itemBuilder: (context, index) {
        return new JobItem(
          job: _jobList[index],
        );
      },
    );
  }
}

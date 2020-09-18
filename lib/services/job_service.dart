import 'dart:async' show Future;
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

import 'package:boss_zhipin/models/job.dart';

class JobService {
  static Future<String> _getJobData() async {
    return rootBundle.loadString('assets/data/job_list.json');
  }

  static Future<List<Job>> getJobData() async {
    List<Job> jobList = new List();
    String respString = await _getJobData();
    final List<Job> resp = json.decode(respString);

    for (int i = 0; i < resp.length; i++) {
      Job job = new Job.fromJSON(resp[i]);
      jobList.add(job);
    }

    return jobList;
  }
}

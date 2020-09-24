import 'package:boss_zhipin/pages/job/job_detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:boss_zhipin/models/job.dart';

class JobItem extends StatefulWidget {
  JobItem({Key key, this.job}) : super(key: key);
  final Job job;
  @override
  _JobItem createState() => new _JobItem();
}

class _JobItem extends State<JobItem> {
  @override
  Widget build(BuildContext context) {
    return new Container(
        color: Colors.white,
        margin: const EdgeInsets.only(bottom: 8.0),
        padding: const EdgeInsets.only(
          left: 15.0,
          right: 15.0,
          top: 20.0,
          bottom: 15.0,
        ),
        child: GestureDetector(
          onTap: () {
            try {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => new JobDetail(job: widget.job),
                ),
              );
            } catch (e) {}
          },
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.job.title,
                    style: TextStyle(
                      color: new Color.fromRGBO(45, 45, 45, 1),
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    widget.job.salary,
                    style: TextStyle(
                        color: new Color.fromRGBO(17, 164, 160, 1),
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: List<Widget>.generate(
                    widget.job.tags.length,
                    (index) => Container(
                          margin: const EdgeInsets.only(right: 8.0),
                          child: RawChip(
                            label: Text(
                              widget.job.tags[index],
                              style: TextStyle(
                                  color: new Color.fromRGBO(102, 102, 102, 1),
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w400),
                            ),
                            backgroundColor:
                                new Color.fromRGBO(245, 245, 245, 1),
                            shape: RoundedRectangleBorder(),
                          ),
                        )),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: List<Widget>.generate(
                    widget.job.company.length,
                    (index) => Container(
                      margin: const EdgeInsets.only(right: 8.0),
                      child: Text(
                        widget.job.company[index],
                        style: TextStyle(
                            color: new Color.fromRGBO(41, 41, 41, 1),
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  )),
              Container(
                margin: const EdgeInsets.only(top: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                            radius: 14.0,
                            backgroundImage:
                                new AssetImage('assets/images/avatar.jpeg')),
                        Container(
                          margin: const EdgeInsets.only(left: 7.0),
                          child: Text(
                            '${widget.job.publisher.name} · ${widget.job.publisher.job}',
                            style: TextStyle(
                                color: new Color.fromRGBO(64, 64, 64, 1),
                                fontSize: 14.0,
                                fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    ),
                    Container(
                      // margin: const EdgeInsets.only(right: 5.0),
                      child: Text(
                        '虎丘区  金山路',
                        style: TextStyle(
                            color: new Color.fromRGBO(167, 167, 167, 1),
                            fontSize: 13.0,
                            fontWeight: FontWeight.w300),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

const KeyWords = <String>['GIS', '前端架构', '5年以上'];

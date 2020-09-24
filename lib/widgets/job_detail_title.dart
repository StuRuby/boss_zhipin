import 'package:flutter/material.dart';
import 'package:lodash_dart/lodash_dart.dart';

import 'package:boss_zhipin/models/job.dart';

class JobDetailTitle extends StatelessWidget {
  JobDetailTitle({Key key, this.job}) : super(key: key);
  final Job job;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      // margin: const EdgeInsets.all(16.0),
      // padding: const EdgeInsets.only(
      //   top: 20.0,
      //   bottom: 15.0,
      // ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: <Widget>[
              Expanded(
                  child: Text(
                this.job.title,
                style: TextStyle(
                  color: new Color.fromRGBO(45, 45, 45, 1),
                  fontSize: 24.0,
                  fontWeight: FontWeight.w700,
                ),
              )),
              Text(
                this.job.salary,
                style: TextStyle(
                  color: new Color.fromRGBO(17, 164, 160, 1),
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Container(
            // margin: EdgeInsets.only(top: 4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.place),
                    Text(
                      Lodash().join(array: this.job.base, separator: '·'),
                      style: TextStyle(
                        color: new Color.fromRGBO(51, 51, 51, 1),
                        fontSize: 15.0,
                        fontWeight: FontWeight.w300,
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.card_travel),
                    Text(
                      this.job.experience,
                      style: TextStyle(
                        color: new Color.fromRGBO(51, 51, 51, 1),
                        fontSize: 15.0,
                        fontWeight: FontWeight.w300,
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.school),
                    Text(
                      this.job.education,
                      style: TextStyle(
                        color: new Color.fromRGBO(51, 51, 51, 1),
                        fontSize: 15.0,
                        fontWeight: FontWeight.w300,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: new Color.fromRGBO(221, 221, 221, 1),
            height: 1,
          ),
        ],
      ),
    );
  }
}

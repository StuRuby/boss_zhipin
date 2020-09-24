import 'package:flutter/material.dart';

class JobDetailTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.all(4.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: <Widget>[
              Expanded(child: Text('data')),
              Text('20-35 * 15薪资'),
            ],
          ),
          Row(
            children: <Widget>[
              Text('11'),
              Text('11'),
              Text('11'),
            ],
          )
        ],
      ),
    );
  }
}

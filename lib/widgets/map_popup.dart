import 'package:flutter/material.dart';

class MapPopup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            // Padding(
            //   padding: EdgeInsets.only(left: 20.0, right: 10.0),
            //   child: Icon(Icons.star),
            // ),
            _cardDesc(context)
          ],
        ),
      ),
    );
  }

  Widget _cardDesc(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        constraints: BoxConstraints(minWidth: 100.0, maxWidth: 200.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[Text('苏州科达科技股份有限公司')],
        ),
      ),
    );
  }
}

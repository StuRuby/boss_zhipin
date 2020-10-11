import 'package:flutter/material.dart';

class JobTag extends StatelessWidget {
  JobTag({Key key, this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return RawChip(
      label: Text(
        this.text,
        style: TextStyle(
            color: new Color.fromRGBO(102, 102, 102, 1),
            fontSize: 12.0,
            fontWeight: FontWeight.w400),
      ),
      backgroundColor: new Color.fromRGBO(245, 245, 245, 1),
      shape: RoundedRectangleBorder(),
    );
  }
}

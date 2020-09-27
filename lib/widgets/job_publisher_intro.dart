import 'package:flutter/material.dart';

class JobPublisherIntro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  radius: 20.0,
                  backgroundImage: AssetImage('assets/images/avatar.jpeg'),
                ),
                Padding(padding: const EdgeInsets.only(left: 5.0, right: 5.0)),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text('高强',
                            style: TextStyle(
                              color: new Color.fromRGBO(46, 46, 46, 1),
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400,
                            )),
                        Padding(padding: const EdgeInsets.only(right: 6.0)),
                        Text(
                          '3日内活跃',
                          style: TextStyle(
                            color: new Color.fromRGBO(176, 176, 176, 1),
                            fontSize: 12.0,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      '科达科技 · 招聘者',
                      style: TextStyle(
                        color: new Color.fromRGBO(46, 46, 46, 1),
                        fontSize: 15.0,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          IconButton(icon: Icon(Icons.navigate_next), onPressed: () {})
        ],
      ),
    );
  }
}

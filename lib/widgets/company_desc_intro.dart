import 'package:flutter/material.dart';

class CompanyDescIntro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          '腾讯科技（深圳）有限公司',
                          style: TextStyle(
                            color: new Color.fromRGBO(46, 46, 46, 1),
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          '已上市·10000人以上·互联网',
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
              )
            ],
          )),
          IconButton(icon: Icon(Icons.navigate_next), onPressed: () {})
        ],
      ),
    );
  }
}

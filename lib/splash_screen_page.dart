// 闪屏界面
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:boss_zhipin/pages/layout.dart';

class SplashScreenPage extends StatefulWidget {
  SplashScreenPage({Key key}) : super(key: key);

  _SplashScreenPage createState() => new _SplashScreenPage();
}

class _SplashScreenPage extends State<SplashScreenPage> {
  Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = new Timer(Duration(milliseconds: 1500), () {
      try {
        Navigator.of(context).pushAndRemoveUntil(PageRouteBuilder(pageBuilder:
            (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) {
          return AnimatedBuilder(
            animation: animation,
            builder: (BuildContext context, Widget child) {
              return Opacity(
                opacity: animation.value,
                child: AppLayout(),
              );
            },
          );
        }), (route) => route == null);
      } catch (e) {}
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Container(
        padding: const EdgeInsets.all(32.0),
        decoration: BoxDecoration(color: new Color.fromRGBO(85, 203, 196, 1)),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 200),
              child: Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  '用聊天的方式找工作',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 8.0,
                      decoration: TextDecoration.none),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'BOSS直聘',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0,
                        decoration: TextDecoration.none),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 6),
                    child: Text(
                      '© 2020 BOSS直聘 All rights reserved',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w200,
                          decoration: TextDecoration.none),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

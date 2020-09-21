import 'package:flutter/material.dart';

import 'package:boss_zhipin/splash_screen_page.dart';
import 'package:boss_zhipin/pages/job/job_detail.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
          primaryIconTheme: const IconThemeData(color: Colors.white),
          brightness: Brightness.light,
          primaryColor: new Color.fromRGBO(83, 202, 195, 1),
          accentColor: Colors.cyan[300]),
      home: new SplashScreenPage(),
      routes: {
        'job_detail': (context) => JobDetail(),
      },
    );
  }
}
